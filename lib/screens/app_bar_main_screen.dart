import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vtenhappmerchant/configs/tab_bar_config.dart';
import 'package:vtenhappmerchant/notifiers/main_screen/main_screen_notifier.dart';

class AppBarMainScreen extends HookWidget {
  const AppBarMainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(mainScreenNotifier);

    return WillPopScope(
      onWillPop: () {
        return willPopNavigation(notifier.selectedIndex);
      },
      child: SafeArea(
        child: ClipRRect(
          child: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: body(notifier.selectedIndex),
            bottomNavigationBar: bottomNavigation(context, notifier),
          ),
        ),
      ),
    );
  }

  Widget bottomNavigation(
    BuildContext context,
    MainScreenNotifier notifier,
  ) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).accentColor,
      currentIndex: notifier.selectedIndex,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      items: TabBarConfig.bottomNavigationBarItems(),
      elevation: 10.0,
      onTap: (int index) {
        switchTab(index, notifier);
      },
    );
  }

  void switchTab(int index, MainScreenNotifier notifier) {
    if (index == notifier.selectedIndex) {
      TabBarConfig.navigationKeyAt(index).currentState.popUntil((route) => route.isFirst);
    } else {
      notifier.switchIndex(index);
    }
  }

  Future<bool> willPopNavigation(notifier) async {
    final isFirstRouteInCurrentTab =
        !await TabBarConfig.navigationKeyAt(notifier.selectedIndex).currentState.maybePop();
    if (isFirstRouteInCurrentTab) {
      if (notifier.selectedIndex != 0) {
        switchTab(0, notifier);
        return false;
      }
    }
    // let system handle back button if we're on the first route
    return isFirstRouteInCurrentTab;
  }

  Widget body(int defaultIndex) {
    return IndexedStack(
      index: defaultIndex,
      children: TabBarConfig.navigationScreens(),
    );
  }
}
