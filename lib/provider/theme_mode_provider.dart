import 'package:flutter/material.dart';

class ThemeModeProvider with ChangeNotifier {
  var _currentThemeMode = ThemeMode.light;
  ThemeMode get currentThemeMode => _currentThemeMode;
  void setTheme(currentThemeMode) {
    _currentThemeMode = currentThemeMode;
    notifyListeners();
  }
}
