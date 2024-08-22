import 'package:flutter/foundation.dart';
import 'package:velvet_framework/core/logger/channels/talker_velvet_logger_channel.dart';
import 'package:velvet_framework/core/logger/contracts/velvet_logger_config_contract.dart';
import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';

class DefaultVelvetLoggerConfig implements VelvetLoggerConfigContract {
  @override
  bool get isEnabled => kDebugMode;

  @override
  List<VelvetLoggerChannel> get channels => [
        TalkerVelvetLoggerChannel(),
      ];
}
