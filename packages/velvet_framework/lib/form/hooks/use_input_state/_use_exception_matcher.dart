part of 'use_input.dart';

/// Exception matcher function used by the `useInput` hook.
///
/// This function takes a list of [ExceptionToMessageResolverFactory] objects and a [ValueNotifier] for error handling.
/// It iterates through the list of factories and resolves the exception using each factory's resolver.
/// If a message is resolved, it sets the value of the error [ValueNotifier] to the resolved message and breaks the loop.
///
/// The [exceptionToMessageResolverFactories] parameter is a list of [ExceptionToMessageResolverFactory] objects
/// that provide resolvers for different types of exceptions.
///
/// The [error] parameter is a [ValueNotifier] that holds the error message.
///
/// Example usage:
/// ```dart
/// ExceptionMatcher matcher = _useInputExceptionMatcher(exceptionToMessageResolverFactories, error);
/// ```
ExceptionMatcher _useInputExceptionMatcher(
  List<ExceptionToMessageResolverFactory> exceptionToMessageResolverFactories,
  ValueNotifier<String?> error,
) {
  return (exception) {
    for (final exceptionToMessageResolverFactory
        in exceptionToMessageResolverFactories) {
      final resolver = exceptionToMessageResolverFactory();
      final message = resolver.resolve(exception);

      error.value = message;

      if (message != null) {
        break;
      }
    }
  };
}
