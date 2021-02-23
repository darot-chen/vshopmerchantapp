import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/app_router.dart';
import 'package:vtenhappmerchant/configs/tab_bar_config_item.dart';
import 'package:vtenhappmerchant/screens/account/account_screen_wrapper.dart';
import 'package:vtenhappmerchant/screens/home/home_screen.dart';

import 'package:vtenhappmerchant/screens/notification/notification_screen.dart';
import 'package:vtenhappmerchant/screens/product/product_screen.dart';
import 'package:vtenhappmerchant/src/widgets/icons.dart';
import 'package:vtenhappmerchant/extensions/string_extensions.dart';

class TabBarConfig {
  static List<TabBarConfigItem> items = [
    TabBarConfigItem(
      title: 'home',
      icon: Iconly.outlineHome,
      path: AppRouter.HOME,
      screen: HomeScreen(),
      key: GlobalKey<NavigatorState>(),
    ),
    TabBarConfigItem(
      title: 'product',
      icon: Iconly.outlineBag,
      path: AppRouter.PRODUCT,
      screen: ProductScreen(),
      key: GlobalKey<NavigatorState>(),
    ),
    TabBarConfigItem(
      title: 'notification',
      icon: Iconly.outlineNotification,
      path: AppRouter.NOTIFICATION,
      screen: NotificationScreen(),
      key: GlobalKey<NavigatorState>(),
    ),
    TabBarConfigItem(
      title: 'account',
      icon: Iconly.outlineProfile,
      path: AppRouter.ACCOUNT_SETTING,
      screen: AccountScreenWrapper(),
      key: GlobalKey<NavigatorState>(),
    ),
  ];

  static Widget screenAt(int index) {
    return TabBarConfig.items[index].screen;
  }

  static GlobalKey<NavigatorState> navigationKeyAt(int index) {
    return TabBarConfig.items[index].key;
  }

  static List<BottomNavigationBarItem> bottomNavigationBarItems() {
    return TabBarConfig.items.map((e) {
      var icon = Icon(e.icon);
      return BottomNavigationBarItem(
        label: e.title.capitalize(),
        icon: icon,
      );
    }).toList();
  }

  static List<Widget> navigationScreens([int selectedIndex = 0]) {
    return TabBarConfig.items.map((e) {
      Widget item = Navigator(
        key: e.key,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => e.screen,
          );
        },
      );
      return item;
    }).toList();
  }
}
