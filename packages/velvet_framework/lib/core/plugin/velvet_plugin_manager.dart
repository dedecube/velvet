import 'package:velvet_framework/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

class VelvetPluginManager implements VelvetPluginManagerContract {
  final List<VelvetPlugin> _plugins = [];

  @override
  void add(VelvetPlugin plugin) {
    _plugins.add(plugin);
  }

  @override
  void runRegister() {
    for (final plugin in _plugins) {
      plugin.register();
    }
  }

  @override
  void runBoot() {
    for (final plugin in _plugins) {
      plugin.boot();
    }
  }
}
