import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin_manager.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/error_handling/error_handling_plugin.dart';
import 'package:velvet_framework/form/form_plugin.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/router/router_plugin.dart';
import 'package:velvet_framework/theme/theme_plugin.dart';
import 'package:velvet_framework/translation/translation_plugin.dart';

typedef WithPluginsCallback = void Function(
  VelvetPluginManagerContract configManager,
);

mixin SetupPluginManagerMixin on KernelContract {
  final List<WithPluginsCallback> _withPluginsCallback = [];

  @protected
  VelvetPluginManagerContract get pluginManager =>
      container.get<VelvetPluginManagerContract>();

  @protected
  void registerPluginManager() {
    container
        .registerSingleton<VelvetPluginManagerContract>(VelvetPluginManager());
  }

  void withPlugins(WithPluginsCallback callback) {
    throwIfRunning();

    _withPluginsCallback.add(callback);
  }

  @protected
  void installCorePlugins() {
    pluginManager
      ..add(ErrorHandlingPlugin())
      ..add(FormPlugin())
      ..add(RouterPlugin())
      ..add(TranslationPlugin())
      ..add(ThemePlugin());
  }

  @protected
  void runPluginCallbacks() {
    for (var callback in _withPluginsCallback) {
      callback(pluginManager);
    }
  }
}
