import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/my_home_page.dart';
import 'package:vtenhappmerchant/notifiers/langs_notifier.dart';
import 'package:vtenhappmerchant/notifiers/theme_notifier.dart';
import 'package:easy_localization/easy_localization.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(themeNotifier);
    final localNotifier = useProvider(langsNotifier(context))..load();

    return MaterialApp(
      title: 'VTenh Merchant',
      home: MyHomePage(title: 'VTenh App Example'),

      //localize
      localizationsDelegates: localNotifier.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: localNotifier.locale,

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
