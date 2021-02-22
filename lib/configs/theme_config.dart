import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/theme_constant.dart';

class ThemeConfig {
  bool isDarkMode;
  ThemeConfig(this.isDarkMode);

  Color color(String key) {
    return ThemeConstant.color(key, isDarkMode: this.isDarkMode);
  }

  ThemeData get() {
    var theme = this.isDarkMode ? ThemeData.dark() : ThemeData.light();

    return theme.copyWith(
      scaffoldBackgroundColor: color("scaffoldBackgroundColor"),
      backgroundColor: color("scaffoldBackgroundColor"),
      highlightColor: color("highlightColor"),
      primaryColor: color("primaryColor"),
      accentColor: color("accentColor"),
      splashColor: color("splashColor"),
      canvasColor: color("canvasColor"),
      errorColor: color("errorColor"),
      hoverColor: color("hoverColor"),
      textTheme: textTheme,
      iconTheme: iconTheme,
      buttonTheme: buttonTheme,
      appBarTheme: appBarTheme,
      dividerTheme: dividerTheme,
      toggleButtonsTheme: toggleButtonsTheme,
      pageTransitionsTheme: pageTransitionsTheme,
      bottomNavigationBarTheme: bottomNavigationBarTheme,
    );
  }

  TextTheme get textTheme => ThemeConstant.textTheme(isDarkMode: this.isDarkMode);

  AppBarTheme get appBarTheme {
    return AppBarTheme(
      textTheme: textTheme,
      color: color("appBarBackgroundColor"),
      iconTheme: IconThemeData(
        color: color("iconTheme"),
      ),
    );
  }

  ButtonThemeData get buttonTheme {
    return ButtonThemeData(
      hoverColor: color("hoverColor"),
      highlightColor: color("highlightColor"),
      splashColor: color("splashColor"),
    );
  }

  ToggleButtonsThemeData get toggleButtonsTheme {
    return ToggleButtonsThemeData(
      hoverColor: color("hoverColor"),
      highlightColor: color("highlightColor"),
      splashColor: color("splashColor"),
    );
  }

  BottomNavigationBarThemeData get bottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: color("primaryColor"),
      selectedItemColor: color("accentColor"),
    );
  }

  IconThemeData get iconTheme {
    return IconThemeData(
      color: color("iconTheme"),
    );
  }

  DividerThemeData get dividerTheme {
    return DividerThemeData(
      indent: 8,
      endIndent: 8,
      thickness: 0.5,
      color: color("dividerColor"),
    );
  }

  // change default android page transition to ios (optional)
  PageTransitionsTheme get pageTransitionsTheme {
    return const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    );
  }
}
