import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/screens/account/account_setting_screen.dart';
import 'package:vtenhappmerchant/screens/home/home_screen.dart';
import 'package:vtenhappmerchant/screens/notification/notification_screen.dart';
import 'package:vtenhappmerchant/screens/product/product_screen.dart';

class AppRouter {
  static const String HOME = '/';
  static const String PRODUCT = '/product';
  static const String NOTIFICATION = '/search';
  static const String ACCOUNT_SETTING = '/account_settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var name = safeName(settings.name);
    Map<String, Route<dynamic>> mappingRoutes = routeConfigs();
    return mappingRoutes[name];
  }

  static String safeName(String name) {
    Map<String, Route<dynamic>> mappingRoutes = routeConfigs();
    return mappingRoutes.containsKey(name) ? name : defaultRoute();
  }

  static Map<String, Route<dynamic>> routeConfigs() {
    Map<String, Route<dynamic>> dataSets = {
      '$HOME': MaterialPageRoute(builder: (context) => HomeScreen()),
      '$PRODUCT': MaterialPageRoute(builder: (context) => ProductScreen()),
      '$NOTIFICATION': MaterialPageRoute(builder: (context) => NotificationScreen()),
      '$ACCOUNT_SETTING': MaterialPageRoute(builder: (context) => AccountSettingScreen()),
    };
    return dataSets;
  }

  static String defaultRoute() {
    return HOME;
  }
}
