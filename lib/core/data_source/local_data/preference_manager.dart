import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  PreferenceManager._();

  static final PreferenceManager _instance = PreferenceManager._();

  factory PreferenceManager() => _instance;

  static SharedPreferences? _prefs;

  static Future<SharedPreferences> initPrefs() async {
    return _prefs ?? await SharedPreferences.getInstance();
  }

  static Future<void> setData<T>({
    required String key,
    required T value,
  }) async {
    final prefs = await initPrefs();
    switch (T) {
      case const (String):
        prefs.setString(key, value as String);
        break;
      case const (int):
        prefs.setInt(key, value as int);
        break;
      case const (double):
        prefs.setDouble(key, value as double);
        break;
      case const (bool):
        prefs.setBool(key, value as bool);
        break;
      case const (List<String>):
        prefs.setStringList(key, value as List<String>);
        break;
      default:
        throw Exception('Unsupported data type');
    }
  }

  static Future<T?> getData<T>({required String key}) async {
    final prefs = await initPrefs();
    switch (T) {
      case const (String):
        return prefs.getString(key) as T?;
      case const (int):
        return prefs.getInt(key) as T?;
      case const (double):
        return prefs.getDouble(key) as T?;
      case const (bool):
        return prefs.getBool(key) as T?;
      case const (List<String>):
        return prefs.getStringList(key) as T?;
      default:
        throw Exception('Unsupported data type');
    }
  }

  static Future<bool> removeData({required String key}) async {
    final prefs = await initPrefs();
    return prefs.remove(key);
  }

  static Future<bool> clearData() async {
    final prefs = await initPrefs();
    return prefs.clear();
  }

  static Future<bool> containsKey({required String key}) async {
    final prefs = await initPrefs();
    return prefs.containsKey(key);
  }

  static Future<bool> hasData() async {
    final prefs = await initPrefs();
    return prefs.getKeys().isNotEmpty;
  }

  static Future<void> updateData<T>({
    required String key,
    required T value,
  }) async {
    final prefs = await initPrefs();

    switch (T) {
      case const (String):
        prefs.setString(key, value as String);
        break;
      case const (int):
        prefs.setInt(key, value as int);
        break;
      case const (double):
        prefs.setDouble(key, value as double);
        break;
      case const (bool):
        prefs.setBool(key, value as bool);
        break;
      case const (List<String>):
        prefs.setStringList(key, value as List<String>);
        break;
      default:
        throw Exception('Unsupported data type');
    }
  }

  static Future<Set<String>> getPrefsKeys() async {
    final prefs = await initPrefs();
    Set<String> keys;
    keys = await prefs.getKeys();
    return keys;
  }

  static get prefs async => _prefs ?? await initPrefs();
}
