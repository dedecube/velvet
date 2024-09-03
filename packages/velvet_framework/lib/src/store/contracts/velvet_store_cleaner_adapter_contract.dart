/// A contract for a store cleaner adapter.
///
/// This contract defines methods for removing data associated with a key from the store
/// and for clearing all data from the store.
abstract interface class VelvetStoreCleanerAdapterContract<T> {
  /// Removes the data associated with the given [key] from the store.
  ///
  /// Throws an exception if the removal fails.
  Future<void> remove(String key);

  /// Clears all data from the store.
  ///
  /// Throws an exception if the clearing fails.
  Future<void> clear();
}
