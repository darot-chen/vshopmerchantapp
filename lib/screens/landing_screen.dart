import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vtenhappmerchant/screens/app_bar_main_screen.dart';
import 'package:vtenhappmerchant/notifiers/app_init_notifier.dart';
import 'package:vtenhappmerchant/screens/introduction_screen.dart';
import 'package:vtenhappmerchant/widgets/loading.dart';

class LandingScreen extends HookWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var notifier = useProvider(appInitNotifier);

    if (notifier.isMainScreen == null) {
      //loading
      return Scaffold(body: Loading(isLoading: true));
    } else {
      var screen = notifier.isMainScreen ? AppBarMainScreen() : IntroductionScreen();

      print('scheduling to run');
      Future.delayed(Duration(microseconds: 0), () {
        print('execute schedule');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => screen),
        );
      });

      //loaded
      return Scaffold(body: Loading(isLoading: false));
    }
  }
}
