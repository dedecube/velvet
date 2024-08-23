import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/event/utils/listen.dart';
import 'package:velvet_framework/core/event/velvet_observer_from_events.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_after_boot.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_after_register.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_before_boot.dart';
import 'package:velvet_framework/core/plugin/events/plugin/velvet_plugin_before_register.dart';
import 'package:velvet_framework/core/plugin/observers/velvet_plugin_observer.dart';

class VelvetPluginSubject
    extends VelvetObserverFromEvents<VelvetPluginObserver> {
  @protected
  @override
  void bindEvents() {
    listen<VelvetPluginBeforeRegister>((event) {
      notifyObservers((observer) => observer.beforeRegister(event.plugin));
    });

    listen<VelvetPluginAfterRegister>((event) {
      notifyObservers((observer) => observer.afterRegister(event.plugin));
    });

    listen<VelvetPluginBeforeBoot>((event) {
      notifyObservers((observer) => observer.beforeBoot(event.plugin));
    });

    listen<VelvetPluginAfterBoot>((event) {
      notifyObservers((observer) => observer.afterBoot(event.plugin));
    });
  }
}
