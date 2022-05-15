import 'package:coffee_shop_v01/services/themes/theme_status.dart';
import 'package:flutter/material.dart';

class ChangeTheme extends ChangeNotifier {
  bool isDark = false;

  set updateTheme(bool value) {
    isDark = value;
    notifyListeners();
  }

  ThemeMode get themeModel => isDark ? ThemeMode.dark : ThemeMode.light;

  void updateThemeShared() async {
    if (isDark != await AppTheme.getTheme) {
      isDark = true;
      notifyListeners();
    }
  }
}
