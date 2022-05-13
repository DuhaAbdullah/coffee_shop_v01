
import 'package:flutter/material.dart';

class ChangeTheme extends ChangeNotifier {
  bool isDark = false;

  set updateTheme(bool value) {
    isDark = false;
    notifyListeners();
  }

  ThemeMode get themeModel => isDark ? ThemeMode.dark : ThemeMode.light;
}
