// ignore_for_file: avoid_dynamic, avoid-dynamic
import 'package:velvet_framework/core/logger/contracts/velvet_logger_config_contract.dart';
import 'package:velvet_framework/core/logger/contracts/velvet_logger_contract.dart';
import 'package:velvet_framework/core/logger/enums/velvet_log_severity_enum.dart';
import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';
import 'package:velvet_framework/core/velvet_container.dart';

class VelvetLogger implements VelvetLoggerContract {
  void _log(
    dynamic message,
    VelvetLogSeverityEnum severity, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  }) {
    if (!container.get<VelvetLoggerConfigContract>().isEnabled) {
      return;
    }

    for (final channel
        in channels ?? container.get<VelvetLoggerConfigContract>().channels) {
      switch (severity) {
        case VelvetLogSeverityEnum.error:
          channel.error(message, error, stackTrace);
          break;
        case VelvetLogSeverityEnum.warning:
          channel.warning(message, error, stackTrace);
          break;
        case VelvetLogSeverityEnum.debug:
          channel.debug(message, error, stackTrace);
          break;
        default:
          channel.info(message, error, stackTrace);
          break;
      }
    }
  }

  @override
  void info(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  }) {
    _log(
      message,
      VelvetLogSeverityEnum.info,
      channels: channels,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void error(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  }) {
    _log(
      message,
      VelvetLogSeverityEnum.error,
      channels: channels,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void warning(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  }) {
    _log(
      message,
      VelvetLogSeverityEnum.warning,
      channels: channels,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void debug(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  }) {
    _log(
      message,
      VelvetLogSeverityEnum.debug,
      channels: channels,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
