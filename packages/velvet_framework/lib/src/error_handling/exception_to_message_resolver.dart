/// A class that resolves an exception to a corresponding error message.
///
/// This class is used to handle exceptions and convert them into human-readable error messages.
/// It takes an exception type `T` and a message factory function that generates an error message
/// based on the specific exception instance.
///
/// Example usage:
/// ```dart
/// ExceptionToMessageResolver<MyException> resolver = ExceptionToMessageResolver<MyException>(
///   (exception) => 'An error occurred: ${exception.message}',
/// );
///
/// String? errorMessage = resolver.resolve(exception);
/// if (errorMessage != null) {
///   print(errorMessage);
/// }
/// ```
class ExceptionToMessageResolver<T extends Exception> {
  ExceptionToMessageResolver(
    this.messageFactory,
  );

  final String Function(T exception) messageFactory;

  /// Resolves the given [exception] to an error message.
  ///
  /// If the [exception] is not an instance of the specified exception type `T`,
  /// this method returns `null`. Otherwise, it calls the message factory function
  /// with the exception instance and returns the generated error message.
  ///
  /// Returns `null` if the exception is not of type `T`.
  String? resolve(Exception exception) {
    if (exception is! T) {
      return null;
    }

    return messageFactory(exception);
  }
}
