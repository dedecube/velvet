abstract class VelvetLoggerChannel {
  void info(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]);

  void error(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]);

  void warning(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]);

  void debug(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]);
}
