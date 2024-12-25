import 'package:flutter/material.dart';
import 'package:vpnify/services/preference/preferences_service.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = true;
  bool get isDarkMode => _isDarkMode;

  ThemeProvider() {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final prefs = await PreferencesService.getInstance();
    _isDarkMode = await prefs.isDarkMode();
    notifyListeners();
  }

  Future<void> toggleTheme(bool value) async {
    _isDarkMode = value;
    final prefs = await PreferencesService.getInstance();
    await prefs.setDarkMode(value);
    notifyListeners();
  }
}