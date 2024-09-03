import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/src/core/config/contracts/velvet_config_manager_contract.dart';
import 'package:velvet_framework/src/core/config/velvet_config_manager.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/kernel/contracts/kernel_contract.dart';

typedef ConfigCallback = void Function(
  VelvetConfigManagerContract configManager,
);

mixin SetupConfigManagerMixin on KernelContract {
  final List<ConfigCallback> _configCallbacks = [];

  @protected
  VelvetConfigManagerContract get configManager =>
      container.get<VelvetConfigManagerContract>();

  @protected
  void registerConfigManager() {
    container
        .registerSingleton<VelvetConfigManagerContract>(VelvetConfigManager());
  }

  void withConfig(
    void Function(VelvetConfigManagerContract configManager) callback,
  ) {
    throwIfRunning();

    _configCallbacks.add(callback);
  }

  @protected
  void runConfigCallbacks() {
    for (var callback in _configCallbacks) {
      callback(configManager);
    }
  }
}
