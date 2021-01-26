import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/notifiers/theme_notifier.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(themeNotifier);
    return MaterialApp(
      title: 'VTenh Merchant',
      home: MyHomePage(title: 'VTenh App Example'),
      themeMode: notifier.themeMode,
      theme: notifier.themeData,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton.icon(
              label: Text("Night Mode"),
              icon: Icon(Icons.brightness_2),
              onPressed: () {
                notifier.setMode(!notifier.isDarkMode);
              },
            )
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
