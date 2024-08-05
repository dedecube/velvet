/// A bag exception that can hold multiple exceptions of type [T].
///
/// This class is designed to be used in the Velvet Framework for handling multiple exceptions.
/// It allows developers to add exceptions of type [T] to the bag and check if the bag is empty.
class BagException<T extends Exception> implements Exception {
  /// Creates a new instance of [BagException].
  ///
  /// The [exceptions] parameter is an optional list of exceptions to initialize the bag with.
  BagException({
    this.exceptions = const [],
  });

  /// The list of exceptions stored in the bag.
  final List<T> exceptions;

  /// Returns `true` if the bag is empty, `false` otherwise.
  bool get isEmpty => exceptions.isEmpty;

  /// Adds an exception of type [T] to the bag.
  ///
  /// Example:
  /// ```dart
  /// final bag = BagException<MyException>();
  /// final exception = MyException('Something went wrong');
  /// bag.add(exception);
  /// ```
  void add(T exception) {
    exceptions.add(exception);
  }
}
