import 'package:flutter/material.dart';

GlobalKeyModel globalKeyModel = GlobalKeyModel();

class GlobalKeyModel {
  GlobalKey _scaffoldKey;
  GlobalKeyModel() {
    _scaffoldKey = GlobalKey();
  }
  GlobalKey get scaffoldKey => _scaffoldKey;
}
