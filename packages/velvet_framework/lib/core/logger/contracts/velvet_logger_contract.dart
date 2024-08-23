// ignore_for_file: avoid_dynamic, avoid-dynamic
import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';

abstract interface class VelvetLoggerContract {
  void info(dynamic message, {List<VelvetLoggerChannel>? channels});

  void error(dynamic message, {List<VelvetLoggerChannel>? channels});

  void warning(dynamic message, {List<VelvetLoggerChannel>? channels});

  void debug(dynamic message, {List<VelvetLoggerChannel>? channels});
}
