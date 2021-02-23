import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vtenhappmerchant/configs/tab_bar_config.dart';

class MainScreenNotifier extends ChangeNotifier {
  int selectedIndex = 0;

  void switchIndex(int index) {
    if (index == selectedIndex) {
      return TabBarConfig.navigationKeyAt(index).currentState.popUntil((route) {
        return route.isFirst;
      });
    }
    selectedIndex = index;
    notifyListeners();
  }
}

final mainScreenNotifier = ChangeNotifierProvider<MainScreenNotifier>((ref) => MainScreenNotifier());
