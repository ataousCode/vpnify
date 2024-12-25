import 'dart:convert';

import 'package:vpnify/services/preference/preferences_keys.dart';

import '../storage/storage_service.dart';

class PreferencesService {
  final StorageService _storage;
  static PreferencesService? _instance;

  PreferencesService._(this._storage);

  static Future<PreferencesService> getInstance() async {
    if (_instance == null) {
      final storage = await SharedPreferencesService.getInstance();
      _instance = PreferencesService._(storage);
    }
    return _instance!;
  }

  // Theme preferences
  Future<bool> isDarkMode() async {
    return await _storage.getBool(PreferencesKeys.themeMode);
  }

  Future<void> setDarkMode(bool value) async {
    await _storage.setBool(PreferencesKeys.themeMode, value);
  }

  // Onboarding preferences
  Future<bool> isOnboardingCompleted() async {
    return await _storage.getBool(PreferencesKeys.onboardingCompleted);
  }

  Future<void> setOnboardingCompleted() async {
    await _storage.setBool(PreferencesKeys.onboardingCompleted, true);
  }

  // User settings preferences
  Future<Map<String, dynamic>> getUserSettings() async {
    final String? settingsJson = await _storage.getString(PreferencesKeys.userSettings);
    if (settingsJson == null || settingsJson.isEmpty) {
      return {};
    }
    try {
      return json.decode(settingsJson) as Map<String, dynamic>;
    } catch (e) {
      return {};
    }
  }

  Future<void> saveUserSettings(Map<String, dynamic> settings) async {
    await _storage.setString(PreferencesKeys.userSettings, json.encode(settings));
  }

  // Clear all preferences
  Future<void> clearAll() async {
    await _storage.clear();
  }
}