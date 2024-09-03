import 'package:velvet_framework/src/core/event/velvet_observer.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';

abstract class VelvetPluginObserver extends VelvetObserver {
  VelvetPluginObserver();

  /// Called before the plugin is registered
  void beforeRegister(VelvetPlugin plugin);

  /// Called after the plugin is registered
  void afterRegister(VelvetPlugin plugin);

  /// Called before the plugin is booted
  void beforeBoot(VelvetPlugin plugin);

  /// Called after the plugin is booted
  void afterBoot(VelvetPlugin plugin);
}
