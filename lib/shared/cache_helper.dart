import 'package:shared_preferences/shared_preferences.dart';

import '../enum.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static putString({required SharedKeys key, required String value}) {
    sharedPreferences.setString(key.name, value);
  }

  static getString({key}) {
    sharedPreferences.getString(key);
  }

  static putInt({key, required int value}) {
    sharedPreferences.setInt(key, value);
  }

  static getInt(SharedKeys key) {
    sharedPreferences.getInt(key.name);
  }

  putDouble(SharedKeys key, double value) {
    sharedPreferences.setDouble(key.name, value);
  }

  getDouble(SharedKeys key) {
    sharedPreferences.getDouble(key.name);
  }

  static putBool({required SharedKeys key, required bool value}) {
    sharedPreferences.setBool(key.name, value);
  }

  static getBool({required SharedKeys key}) {
    sharedPreferences.getBool(key.name);
  }

  delete(SharedKeys key) {
    sharedPreferences.remove(key.name);
  }

  remove() {
    sharedPreferences.clear();
  }
}
