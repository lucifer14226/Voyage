import 'package:fease/view_model/darkmode_model.dart';
import 'package:fease/view_model/darkmode_model.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider extends ChangeNotifier {
  DarkThemePrefernce darkThemePrefernce = DarkThemePrefernce();
  bool _darktheme = false;

  bool get darkTheme => _darktheme;

  set darkTheme(bool value) {
    _darktheme = value;
    darkThemePrefernce.setDarkTheme(value);
    notifyListeners();
  }
}
