import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';
import 'package:velvet_framework/velvet_framework.dart';

class TalkerVelvetLoggerChannel extends VelvetLoggerChannel {
  @override
  void info(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    talkerGlobalInstance.info(message, exception, stackTrace);
  }

  @override
  void debug(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    talkerGlobalInstance.debug(message, exception, stackTrace);
  }

  @override
  void error(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    talkerGlobalInstance.error(message, exception, stackTrace);
  }

  @override
  void warning(
    String message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    talkerGlobalInstance.warning(message, exception, stackTrace);
  }
}
