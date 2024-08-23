import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin_manager.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/kernel/loaders/velvet_plugin_loader.dart';

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
  void addCorePlugins() {
    velvetPluginLoader().forEach((plugin) {
      pluginManager.addPlugin(plugin);
    });
  }

  @protected
  void runPluginCallbacks() {
    for (var callback in _withPluginsCallback) {
      callback(pluginManager);
    }
  }
}
