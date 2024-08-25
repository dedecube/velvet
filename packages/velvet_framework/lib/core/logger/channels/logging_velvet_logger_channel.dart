// ignore_for_file: avoid_dynamic, avoid-dynamic
import 'package:logging/logging.dart';
import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';

class LoggingVelvetLoggerChannel extends VelvetLoggerChannel {
  LoggingVelvetLoggerChannel() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    });
  }

  final _log = Logger('VelvetFramework');

  @override
  void critical(message, [Object? error, StackTrace? stackTrace]) {
    _log.severe(message, error, stackTrace);
  }

  @override
  void debug(message, [Object? error, StackTrace? stackTrace]) {
    _log.fine(message, error, stackTrace);
  }

  @override
  void error(message, [Object? error, StackTrace? stackTrace]) {
    _log.severe(message, error, stackTrace);
  }

  @override
  void info(message, [Object? error, StackTrace? stackTrace]) {
    _log.info(message, error, stackTrace);
  }

  @override
  void warning(message, [Object? error, StackTrace? stackTrace]) {
    _log.warning(message, error, stackTrace);
  }
}
