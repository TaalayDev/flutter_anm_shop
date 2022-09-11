import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../imports.dart';

abstract class LocaleStorage {
  static LocaleStorage? _instance;
  static LocaleStorage get instance => _instance!;

  factory LocaleStorage() => instance;

  LocaleStorage._();

  static init() async {
    assert(_instance == null);
    final impl = SharedPrefLocaleStorageImpl._();
    await impl.init();
    _instance = impl;
    return _instance!;
  }

  void setInt(String key, int value);
  void setDouble(String key, double value);
  void setBool(String key, bool value);
  void setString(String key, String value);
  void setStringList(String key, List<String> value);
  void setObject(String key, Object value);

  bool? getBool(String key);
  int? getInt(String key);
  double? getDouble(String key);
  String? getString(String key);
  List<String>? getStringList(String key);
  dynamic getObject(String key);

  bool get isDarkMode => getBool('is_dark_mode') ?? false;
  set isDarkMode(bool val) => setBool('is_dark_mode', val);

  ThemeType get currentThemeType {
    final type = getString('theme_type');
    return ThemeType.values.firstWhere(
      (element) => element.name == type,
      orElse: () => AppTheme.defaultTheme,
    );
  }

  set currentThemeType(ThemeType val) => setString('theme_type', val.name);
  bool get fcmEnabled => getBool('notifications_enabled') ?? true;
  set fcmEnabled(bool val) => setBool('notifications_enabled', val);

  bool get firstRun => getBool('first_run') ?? true;
  set firstRun(bool val) => setBool('first_run', val);
}

class SharedPrefLocaleStorageImpl extends LocaleStorage {
  SharedPreferences? _preferences;

  SharedPrefLocaleStorageImpl._() : super._();

  Future<void> init() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  void setInt(String key, int value) => _preferences?.setInt(key, value);
  void setDouble(String key, double value) =>
      _preferences?.setDouble(key, value);
  void setBool(String key, bool value) => _preferences?.setBool(key, value);
  void setString(String key, String value) =>
      _preferences?.setString(key, value);
  void setStringList(String key, List<String> value) =>
      _preferences?.setStringList(key, value);
  void setObject(String key, Object value) =>
      _preferences?.setString(key, jsonEncode(value));

  bool? getBool(String key) => _preferences?.getBool(key);
  int? getInt(String key) => _preferences?.getInt(key);
  double? getDouble(String key) => _preferences?.getDouble(key);
  String? getString(String key) => _preferences?.getString(key);
  List<String>? getStringList(String key) => _preferences?.getStringList(key);
  dynamic getObject(String key) {
    final value = _preferences?.getString(key);
    if (value != null) jsonDecode(value);
    return null;
  }
}
