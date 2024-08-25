import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/logger/config/default_velvet_logger_config.dart';
import 'package:velvet_framework/core/logger/contracts/velvet_logger_config_contract.dart';
import 'package:velvet_framework/core/logger/contracts/velvet_logger_contract.dart';
import 'package:velvet_framework/core/logger/velvet_logger.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';

mixin SetupLoggerMixin on KernelContract {
  VelvetLoggerConfigContract? _loggerConfig;

  @protected
  void registerLogger() {
    container.registerSingleton<VelvetLoggerContract>(VelvetLogger());
  }

  @protected
  void registerLoggerConfig() {
    container.registerSingleton<VelvetLoggerConfigContract>(
      _loggerConfig ?? DefaultVelvetLoggerConfig(),
    );
  }

  // ignore: use_setters_to_change_properties
  void useLoggerConfig(VelvetLoggerConfigContract loggerConfig) {
    _loggerConfig = loggerConfig;
  }
}
