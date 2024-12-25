import 'package:shared_preferences/shared_preferences.dart';

/// Abstract class defining the contract for storage operations
abstract class StorageService {
  Future<bool> getBool(String key);
  Future<void> setBool(String key, bool value);
  Future<String?> getString(String key);
  Future<void> setString(String key, String value);
  Future<void> remove(String key);
  Future<void> clear();
}

/// Implementation of StorageService using SharedPreferences
class SharedPreferencesService implements StorageService {
  static SharedPreferencesService? _instance;
  static SharedPreferences? _preferences;

  SharedPreferencesService._();

  static Future<SharedPreferencesService> getInstance() async {
    if (_instance == null) {
      _instance = SharedPreferencesService._();
      await _instance!._init();
    }
    return _instance!;
  }

  Future<void> _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<bool> getBool(String key) async {
    return _preferences?.getBool(key) ?? false;
  }

  @override
  Future<void> setBool(String key, bool value) async {
    await _preferences?.setBool(key, value);
  }

  @override
  Future<String?> getString(String key) async {
    return _preferences?.getString(key);
  }

  @override
  Future<void> setString(String key, String value) async {
    await _preferences?.setString(key, value);
  }

  @override
  Future<void> remove(String key) async {
    await _preferences?.remove(key);
  }

  @override
  Future<void> clear() async {
    await _preferences?.clear();
  }
}