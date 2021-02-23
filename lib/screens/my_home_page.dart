import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/models/global_model.dart';
import 'package:vtenhappmerchant/notifiers/langs_notifier.dart';
import 'package:vtenhappmerchant/screens/account/account_screen_wrapper.dart';
import 'package:vtenhappmerchant/screens/authentication/social_signin.dart';
import 'package:vtenhappmerchant/src/widgets/icons.dart';
import '../constants/config_constant.dart';
import '../mixins/toast.dart';
import '../notifiers/theme_notifier.dart';
import '../widgets/scale_down_on_tap.dart';
import '../extensions/locale_extensions.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title = "MyApp"}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with Toast {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKeyModel.scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(tr('you_can_push_the_button_this_many_times')),
            const SizedBox(height: ConfigConstant.margin1),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: ConfigConstant.margin1),

            //error toast
            FlatButton(
              color: Theme.of(context).errorColor,
              child: Text(
                "Show Error Toast",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                showError(context: context, title: "Error Toast", subtitle: "This is error toast example");
              },
            ),
            //success toast
            FlatButton(
              color: Theme.of(context).accentColor,
              child: Text(
                "Show Success Toast",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                showSuccess(context: context, title: "Success Toast", subtitle: "This is success toast example");
              },
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconly.outline2User,
                color: Colors.red,
              ),
            ),

            //nigth mode
            Consumer(
              builder: (context, reader, child) {
                final notifier = reader(themeNotifier);
                return FlatButton.icon(
                  color: Theme.of(context).disabledColor,
                  icon: Icon(Icons.brightness_2),
                  label: Text(
                    "Night Mode: " + notifier.isDarkMode.toString().toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    notifier.setMode(!notifier.isDarkMode);
                  },
                );
              },
            ),

            //nigth mode
            Consumer(
              builder: (context, reader, child) {
                final notifier = reader(langsNotifier(context));
                var langs = notifier.supportedLocales;
                return Wrap(
                  children: List.generate(
                    langs.length,
                    (index) => Container(
                      margin: EdgeInsets.only(
                        left: index == langs.length - 1 ? ConfigConstant.margin2 : 0,
                      ),
                      child: FlatButton(
                        color: Theme.of(context).canvasColor,
                        onPressed: () {
                          notifier.updateLocales(langs[index]);
                        },
                        child: Text(
                          langs[index].toLanguageName(context),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),

            //error toast
            FlatButton(
              color: Theme.of(context).errorColor,
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AccountScreenWrapper();
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: ConfigConstant.margin2),

            //social sign in
            SocialSignIn(),
          ],
        ),
      ),
      floatingActionButton: ScaleDownOnTab(
        onTap: _incrementCounter,
        onLongPress: _resetCounter,
        child: Container(
          height: ConfigConstant.toolbarHeight,
          width: ConfigConstant.toolbarHeight,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(ConfigConstant.toolbarHeight),
          ),
          child: Icon(
            Icons.add,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
