import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/src/core/event/utils/listen.dart';
import 'package:velvet_framework/src/core/event/velvet_observer_from_events.dart';
import 'package:velvet_framework/src/core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_boot.dart';
import 'package:velvet_framework/src/core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_register.dart';
import 'package:velvet_framework/src/core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_boot.dart';
import 'package:velvet_framework/src/core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_register.dart';
import 'package:velvet_framework/src/core/plugin/observers/velvet_plugin_manager_observer.dart';

class VelvetPluginManagerSubject
    extends VelvetObserverFromEvents<VelvetPluginManagerObserver> {
  @protected
  @override
  void bindEvents() {
    listen<VelvetPluginManagerBeforeRunRegister>((event) {
      notifyObservers((observer) => observer.beforeRegister());
    });

    listen<VelvetPluginManagerAfterRunRegister>((event) {
      notifyObservers((observer) => observer.afterRegister());
    });

    listen<VelvetPluginManagerBeforeRunBoot>((event) {
      notifyObservers((observer) => observer.beforeBoot());
    });

    listen<VelvetPluginManagerAfterRunBoot>((event) {
      notifyObservers((observer) => observer.afterBoot());
    });
  }
}
