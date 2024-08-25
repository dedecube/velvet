/// An abstract class representing a logger channel for the Velvet framework.
///
/// This class defines the methods for logging different levels of messages,
/// such as debug, info, warning, error, and critical.
abstract class VelvetLoggerChannel {
  /// Logs a debug message.
  ///
  /// The [message] parameter represents the debug message to be logged.
  /// The [error] parameter represents an optional error associated with the debug message.
  /// The [stackTrace] parameter represents an optional stack trace associated with the debug message.
  void debug(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]);

  /// Logs an info message.
  ///
  /// The [message] parameter represents the info message to be logged.
  /// The [error] parameter represents an optional error associated with the info message.
  /// The [stackTrace] parameter represents an optional stack trace associated with the info message.
  void info(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]);

  /// Logs a warning message.
  ///
  /// The [message] parameter represents the warning message to be logged.
  /// The [error] parameter represents an optional error associated with the warning message.
  /// The [stackTrace] parameter represents an optional stack trace associated with the warning message.
  void warning(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]);

  /// Logs an error message.
  ///
  /// The [message] parameter represents the error message to be logged.
  /// The [error] parameter represents an optional error associated with the error message.
  /// The [stackTrace] parameter represents an optional stack trace associated with the error message.
  void error(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]);

  /// Logs a critical message.
  ///
  /// The [message] parameter represents the critical message to be logged.
  /// The [error] parameter represents an optional error associated with the critical message.
  /// The [stackTrace] parameter represents an optional stack trace associated with the critical message.
  void critical(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]);
}
