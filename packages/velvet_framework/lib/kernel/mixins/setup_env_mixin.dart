import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:velvet_framework/core/env/config/dynamic_env_config.dart';
import 'package:velvet_framework/core/env/contracts/env_config_contract.dart';
import 'package:velvet_framework/velvet_framework.dart';

mixin SetupEnvMixin on KernelContract {
  String _envContent = '';

  void optOutFromEnvLoading() {
    configManager().register<EnvConfigContract>(
      DynamicEnvConfig(isEnabled: false),
    );
  }

  Future<void> loadEnv() async {
    if (!kDebugMode) {
      return;
    }

    if (!config<EnvConfigContract>().isEnabled) {
      return;
    }

    await dotenv.load();

    _listenForEnvRead();
  }

  void _listenForEnvRead() {
    listen<EnvReadEvent>((event) async {
      if (event.content == _envContent) {
        return;
      }

      _envContent = event.content;

      await dotenv.load();
    });
  }

  @protected
  void registerEnvConfig() {
    container.registerSingleton<EnvConfigContract>(
      DynamicEnvConfig(isEnabled: true),
    );
  }
}
