import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/mixins/toast.dart';
import 'package:vtenhappmerchant/notifiers/theme_notifier.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(themeNotifier);

    return MaterialApp(
      title: 'VTenh Merchant',
      home: MyHomePage(title: 'VTenh App Example'),

      //theme
      themeMode: notifier.themeMode,
      theme: notifier.themeData,

      //init toast
      builder: BotToastInit(),
      navigatorObservers: [
        BotToastNavigatorObserver(),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
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
    final notifier = context.read(themeNotifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            const SizedBox(height: ConfigConstant.margin),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: ConfigConstant.margin),

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
            //nigth mode
            FlatButton.icon(
              color: Theme.of(context).disabledColor,
              icon: Icon(Icons.brightness_2),
              label: Text(
                "Night Mode: " + notifier.isDarkMode.toString().toUpperCase(),
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                notifier.setMode(!notifier.isDarkMode);
              },
            ),
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
