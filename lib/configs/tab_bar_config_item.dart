import 'package:flutter/material.dart';

class TabBarConfigItem {
  String title;
  IconData icon;
  String path;
  Widget screen;
  GlobalKey<NavigatorState> key;

  TabBarConfigItem({
    @required this.title,
    @required this.icon,
    @required this.path,
    @required this.screen,
    @required this.key,
  });
}
