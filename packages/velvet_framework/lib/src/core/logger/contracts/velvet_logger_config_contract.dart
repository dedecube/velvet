import 'package:velvet_framework/src/core/config/velvet_config.dart';
import 'package:velvet_framework/src/core/logger/velvet_logger_channel.dart';

abstract class VelvetLoggerConfigContract extends VelvetConfig {
  /// Whether the logger is enabled or not.
  bool get isEnabled;

  /// The list of channels that the logger will use to log messages.
  List<VelvetLoggerChannel> get channels;
}
