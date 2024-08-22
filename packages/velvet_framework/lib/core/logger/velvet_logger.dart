import 'package:velvet_framework/core/logger/contracts/velvet_logger_config_contract.dart';
import 'package:velvet_framework/core/logger/contracts/velvet_logger_contract.dart';
import 'package:velvet_framework/core/logger/enums/velvet_log_severity_enum.dart';
import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';
import 'package:velvet_framework/core/velvet_container.dart';

class VelvetLogger implements VelvetLoggerContract {
  void _log(
    String message,
    VelvetLogSeverityEnum severity, {
    List<VelvetLoggerChannel>? channels,
  }) {
    if (!container.get<VelvetLoggerConfigContract>().isEnabled) {
      return;
    }

    for (final channel
        in channels ?? container.get<VelvetLoggerConfigContract>().channels) {
      switch (severity) {
        case VelvetLogSeverityEnum.error:
          channel.error(message);
          break;
        case VelvetLogSeverityEnum.warning:
          channel.warning(message);
          break;
        case VelvetLogSeverityEnum.debug:
          channel.debug(message);
          break;
        default:
          channel.info(message);
          break;
      }
    }
  }

  @override
  void info(String message, {List<VelvetLoggerChannel>? channels}) {
    _log(message, VelvetLogSeverityEnum.info, channels: channels);
  }

  @override
  void error(String message, {List<VelvetLoggerChannel>? channels}) {
    _log(message, VelvetLogSeverityEnum.error, channels: channels);
  }

  @override
  void warning(String message, {List<VelvetLoggerChannel>? channels}) {
    _log(message, VelvetLogSeverityEnum.warning, channels: channels);
  }

  @override
  void debug(String message, {List<VelvetLoggerChannel>? channels}) {
    _log(message, VelvetLogSeverityEnum.debug, channels: channels);
  }
}
