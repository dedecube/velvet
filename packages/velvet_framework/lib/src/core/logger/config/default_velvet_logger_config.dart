import 'package:flutter/foundation.dart';
import 'package:velvet_framework/src/core/logger/channels/talker_velvet_logger_channel.dart';
import 'package:velvet_framework/src/core/logger/contracts/velvet_logger_config_contract.dart';
import 'package:velvet_framework/src/core/logger/velvet_logger_channel.dart';

class DefaultVelvetLoggerConfig implements VelvetLoggerConfigContract {
  @override
  bool get isEnabled => kDebugMode;

  @override
  List<VelvetLoggerChannel> get channels => [
        TalkerVelvetLoggerChannel(),
      ];
}
