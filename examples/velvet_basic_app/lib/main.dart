import 'package:velvet_basic_app/config/form_config.dart';
import 'package:velvet_basic_app/config/router_config.dart';
import 'package:velvet_basic_app/core/observers/plugin_manager_observer.dart';
import 'package:velvet_basic_app/core/observers/plugin_observer.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  createVelvetApp()
    ..withConfig((configManager) {
      configManager
        ..register<FormConfigContract>(FormConfig())
        ..register<VelvetRouterConfigContract>(RouterConfig());
    })
    ..withPlugins((pluginManager) {
      pluginManager
        ..addManagerObserver(PluginManagerObserver())
        ..addPluginObserver(PluginObserver());
    })
    ..run();
}
