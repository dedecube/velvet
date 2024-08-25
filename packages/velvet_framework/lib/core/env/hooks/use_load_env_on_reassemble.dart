import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/core/env/contracts/env_config_contract.dart';
import 'package:velvet_framework/core/env/events/env_read_event.dart';
import 'package:velvet_framework/core/event/utils/event.dart';
import 'package:velvet_framework/core/utils/config.dart';
import 'package:velvet_framework/core/utils/logger.dart';

/// A hook that listens to the reassemble event and reloads the .env file.
/// This is useful when you want to reload the .env file when it changes.
/// By default, this hook is implemented in the [KernelWidget].
void useLoadEnvOnReassemble() {
  useReassemble(() async {
    if (config<EnvConfigContract>().isEnabled == false) {
      return;
    }

    try {
      String envContent = await rootBundle.loadString('.env');
      event(EnvReadEvent(envContent));
    } catch (e) {
      logger().warning('No .env file found');
    }
  });
}
