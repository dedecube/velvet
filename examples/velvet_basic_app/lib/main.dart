import 'package:velvet_basic_app/config/form_config.dart';
import 'package:velvet_basic_app/config/router_config.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  createVelvetApp()
    ..boot(translationLocaleFromStoreBootstrap)
    ..config((configManager) {
      configManager
        ..register<FormConfigContract>(FormConfig())
        ..register<RouterConfigContract>(RouterConfig());
    })
    ..run();
}
