import 'package:velvet_framework/src/core/event/velvet_observer.dart';

abstract class VelvetPluginManagerObserver extends VelvetObserver {
  VelvetPluginManagerObserver();

  /// Called before the plugins are registered
  void beforeRegister();

  /// Called after the plugins are registered
  void afterRegister();

  /// Called before the plugins are booted
  void beforeBoot();

  /// Called after the plugins are booted
  void afterBoot();
}
