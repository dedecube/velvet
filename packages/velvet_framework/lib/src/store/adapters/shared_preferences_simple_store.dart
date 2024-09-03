import 'package:shared_preferences/shared_preferences.dart';

import 'package:velvet_framework/src/store/contracts/velvet_store_simple_adapter_contract.dart';

/// A simple storage adapter that uses [SharedPreferences] as the storage mechanism.
class SharedPreferencesSimpleStorage
    implements VelvetStoreSimpleAdapterContract {
  SharedPreferencesSimpleStorage(this._sharedPreferencesInstance);

  final SharedPreferences _sharedPreferencesInstance;

  @override
  Future<void> clear() {
    return _sharedPreferencesInstance.clear();
  }

  @override
  Future<bool?> getBool(String key, {bool? defaultValue}) async {
    bool? value = _sharedPreferencesInstance.getBool(key);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  @override
  Future<double?> getDouble(String key, {double? defaultValue}) async {
    double? value = _sharedPreferencesInstance.getDouble(key);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  @override
  Future<int?> getInt(String key, {int? defaultValue}) async {
    int? value = _sharedPreferencesInstance.getInt(key);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  @override
  Future<String?> getString(String key, {String? defaultValue}) async {
    String? value = _sharedPreferencesInstance.getString(key);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  @override
  Future<List<String>?> getStringList(
    String key, {
    List<String>? defaultValue,
  }) async {
    List<String>? value = _sharedPreferencesInstance.getStringList(key);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  @override
  Future<void> remove(String key) {
    return _sharedPreferencesInstance.remove(key);
  }

  @override
  Future<void> setBool(String key, bool value) {
    return _sharedPreferencesInstance.setBool(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) {
    return _sharedPreferencesInstance.setDouble(key, value);
  }

  @override
  Future<void> setInt(String key, int value) {
    return _sharedPreferencesInstance.setInt(key, value);
  }

  @override
  Future<void> setString(String key, String value) {
    return _sharedPreferencesInstance.setString(key, value);
  }

  @override
  Future<void> setStringList(String key, List<String> value) {
    return _sharedPreferencesInstance.setStringList(key, value);
  }
}
