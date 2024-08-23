import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/event/utils/event.dart';
import 'package:velvet_framework/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_after_boot.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_after_register.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_before_boot.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_before_register.dart';
import 'package:velvet_framework/core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_boot.dart';
import 'package:velvet_framework/core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_register.dart';
import 'package:velvet_framework/core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_boot.dart';
import 'package:velvet_framework/core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_register.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

class VelvetPluginManager implements VelvetPluginManagerContract {
  final List<VelvetPlugin> _plugins = [];

  @override
  void addPlugin(VelvetPlugin plugin) {
    _plugins.add(plugin);
  }

  @override
  FutureOr<void> runRegister() async {
    event(VelvetPluginManagerBeforeRunRegister());

    for (final plugin in _plugins) {
      event(VelvetPluginBeforeRegister(plugin));
      await plugin.register();
      event(VelvetPluginAfterRegister(plugin));
    }

    event(VelvetPluginManagerAfterRunRegister());
  }

  @override
  FutureOr<void> runBoot() async {
    event(VelvetPluginManagerBeforeRunBoot());

    for (final plugin in _plugins) {
      event(VelvetPluginBeforeBoot(plugin));
      await plugin.boot();
      event(VelvetPluginAfterBoot(plugin));
    }

    event(VelvetPluginManagerAfterRunBoot());
  }
}
