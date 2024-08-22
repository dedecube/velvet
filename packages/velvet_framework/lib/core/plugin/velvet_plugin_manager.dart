import 'dart:async';

import 'package:velvet_framework/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

class VelvetPluginManager implements VelvetPluginManagerContract {
  final List<VelvetPlugin> _plugins = [];

  @override
  void add(VelvetPlugin plugin) {
    _plugins.add(plugin);
  }

  @override
  FutureOr<void> runRegister() async {
    for (final plugin in _plugins) {
      await plugin.register();
    }
  }

  @override
  FutureOr<void> runBoot() async {
    for (final plugin in _plugins) {
      await plugin.boot();
    }
  }
}
