// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:convert';


import 'package:product/core/log/log.dart';


import 'package:shared_preferences/shared_preferences.dart';

/// Base class.
class LocalStorage {
  LocalStorage({this.isDebug = false});

  final bool isDebug;
  static const String _info = '';

  static const String _set = '💾 👇🏻SET';
  static const String _get = '💾 ☝🏻 GET';

// ******************************
  static const _firstStart = '_first_start';
  Future<bool> isFirstStart() {
    return getBool(key: _firstStart, defValue: true);
  }

  Future<void> completeFirstStart() {
    return setBool(key: _firstStart, value: false);
  }
// ******************************



// ******************************
  static const _completeOnboarding = 'completed_onboarding';

  Future<bool> isOnboardingCompleted() {
    return getBool(key: _completeOnboarding);
  }

  Future<void> completeOnboarding() {
    return setBool(key: _completeOnboarding, value: true);
  }


// ******************************
  /// SaveString.
  Future<void> setString({required String key, required String value}) async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.setString(key, value);
    if (isDebug) {
      log.i('$_set $_info > $key\nvalue = $value\nresult = $result');
    }
  }

  Future<void> setStringList({
    required String key,
    required List<String> value,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setStringList(key, value);
    if (isDebug) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }



  Future<void> setJson({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setString(key, jsonEncode(value));
    if (isDebug) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }



  /// SaveBool.
  Future<void> setBool({required String key, required bool value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setBool(key, value);
    if (isDebug) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveDouble.
  Future<void> setDouble({required String key, required double value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setDouble(key, value);
    if (isDebug) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  /// SaveInt.
  Future<void> setInt({required String key, required int value}) async {
    final pref = await SharedPreferences.getInstance();
    final _ = await pref.setInt(key, value);
    if (isDebug) {
      log.i('$_set $_info > $key\nvalue = $value');
    }
  }

  Future<Map<String, dynamic>> getJson({
    required String key,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result =
        jsonDecode(pref.getString(key) ?? '{}') as Map<String, dynamic>;

    if (isDebug) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetString.
  Future<String> getString({
    required String key,
    String defaultValue = '',
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getString(key) ?? defaultValue;
    if (isDebug) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetListString.
  Future<List<String>> getStringList({required String key}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getStringList(key) ?? List.empty();
    if (isDebug) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetInt.
  Future<int> getInt({required String key, int defaultValue = 0}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getInt(key) ?? defaultValue;
    if (isDebug) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetDouble.
  Future<double> getDouble({
    required String key,
    double defaultValue = 0,
  }) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getDouble(key) ?? defaultValue;
    if (isDebug) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// GetBoolData.
  Future<bool> getBool({required String key, bool defValue = false}) async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getBool(key) ?? defValue;
    if (isDebug) {
      log.i('$_get $_info > $key\nvalue = $result');
    }

    return result;
  }

  /// IsNull.
  Future<bool> isNull(String key) async {
    final pref = await SharedPreferences.getInstance();
    final val = pref.get(key);
    bool result;

    // ignore: avoid_bool_literals_in_conditional_expressions
    result = val == null ? true : false;
    if (isDebug) {
      log.i(
        '$_get  $_info | isNull \nresult = $result \nkey = $key \nvalue = $val',
      );
    }

    return result;
  }

  /// ClearAll.
  Future<void> clearAll() async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.clear();

    if (isDebug) log.i('CLEAR $_info > result = $result');
  }
}
