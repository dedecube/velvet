import 'package:velvet_framework/src/store/contracts/velvet_store_cleaner_adapter_contract.dart';

/// A contract for a simple key-value store adapter.
abstract class VelvetStoreSimpleAdapterContract
    implements VelvetStoreCleanerAdapterContract {
  /// Sets a string value for the given key.
  Future<void> setString(String key, String value);

  /// Sets an integer value for the given key.
  Future<void> setInt(String key, int value);

  /// Sets a double value for the given key.
  Future<void> setDouble(String key, double value);

  /// Sets a boolean value for the given key.
  Future<void> setBool(String key, bool value);

  /// Sets a list of strings value for the given key.
  Future<void> setStringList(String key, List<String> value);

  /// Retrieves a string value for the given key.
  /// Returns the value associated with the key, or [defaultValue] if the key is not found.
  Future<String?> getString(String key, {String? defaultValue});

  /// Retrieves an integer value for the given key.
  /// Returns the value associated with the key, or [defaultValue] if the key is not found.
  Future<int?> getInt(String key, {int? defaultValue});

  /// Retrieves a double value for the given key.
  /// Returns the value associated with the key, or [defaultValue] if the key is not found.
  Future<double?> getDouble(String key, {double? defaultValue});

  /// Retrieves a boolean value for the given key.
  /// Returns the value associated with the key, or [defaultValue] if the key is not found.
  Future<bool?> getBool(String key, {bool? defaultValue});

  /// Retrieves a list of strings value for the given key.
  /// Returns the value associated with the key, or [defaultValue] if the key is not found.
  Future<List<String>?> getStringList(String key, {List<String>? defaultValue});
}
