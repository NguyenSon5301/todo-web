import 'package:shared_preferences/shared_preferences.dart';
part 'share_preference_key.dart';

class SharePreferenceService {
  static SharedPreferences? sharedPref;

  static Future<void> initSharePreference() async {
    if (sharedPref != null) {
      return;
    }
    sharedPref = await SharedPreferences.getInstance();
  }

  static Future<List<String>> getListString(
    SharePrefKey key, {
    List<String> fallback = const [],
  }) async {
    sharedPref ??= await SharedPreferences.getInstance();
    return sharedPref!.getStringList(key.toString()) ?? fallback;
  }

  static Future<String> getString(
    SharePrefKey key, {
    String fallback = '',
  }) async {
    sharedPref ??= await SharedPreferences.getInstance();
    return sharedPref!.getString(key.toString()) ?? fallback;
  }

  static Future<bool> getBool(
    SharePrefKey key, {
    bool fallback = false,
  }) async {
    sharedPref ??= await SharedPreferences.getInstance();
    return sharedPref!.getBool(key.toString()) ?? fallback;
  }

  static Future<int> getInt(
    SharePrefKey key, {
    int fallback = 0,
  }) async {
    sharedPref ??= await SharedPreferences.getInstance();
    return sharedPref!.getInt(key.toString()) ?? fallback;
  }

  static Future<double> getDouble(
    SharePrefKey key, {
    double fallback = 0,
  }) async {
    sharedPref ??= await SharedPreferences.getInstance();
    return sharedPref!.getDouble(key.toString()) ?? fallback;
  }

  static Future<bool> containsKey(SharePrefKey key) async {
    sharedPref ??= await SharedPreferences.getInstance();
    return sharedPref!.containsKey(key.toString());
  }

  static Future<bool> removeKey(SharePrefKey key) async {
    sharedPref ??= await SharedPreferences.getInstance();
    return sharedPref!.remove(key.toString());
  }

  static Future<bool> setPref<T>(SharePrefKey key, Type type, T value) async {
    try {
      sharedPref ??= await SharedPreferences.getInstance();
      switch (type) {
        case Type.tList:
          return sharedPref!
              .setStringList(key.toString(), value as List<String>);
        case Type.tString:
          return sharedPref!.setString(key.toString(), value as String);
        case Type.tDouble:
          return sharedPref!.setDouble(key.toString(), value as double);
        case Type.tInt:
          return sharedPref!.setInt(key.toString(), value as int);
        case Type.tBool:
          return sharedPref!.setBool(key.toString(), value as bool);
      }
    } catch (e) {
      // AppLoggerService.ins.logger.e('Error on SharePreferenceService', e);
      return false;
    }
  }
}
