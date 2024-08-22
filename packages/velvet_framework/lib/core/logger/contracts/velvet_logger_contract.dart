import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';

abstract interface class VelvetLoggerContract {
  void info(String message, {List<VelvetLoggerChannel>? channels});

  void error(String message, {List<VelvetLoggerChannel>? channels});

  void warning(String message, {List<VelvetLoggerChannel>? channels});

  void debug(String message, {List<VelvetLoggerChannel>? channels});
}
