import 'package:velvet_framework/src/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/src/core/plugin/observers/velvet_plugin_manager_observer.dart';
import 'package:velvet_framework/src/core/plugin/observers/velvet_plugin_observer.dart';
import 'package:velvet_framework/src/core/plugin/subjects/velvet_plugin_manager_subject.dart';
import 'package:velvet_framework/src/core/plugin/subjects/velvet_plugin_subject.dart';

/// Extension on [VelvetPluginManagerContract] that provides methods for observing changes in the Velvet plugin manager.
///
/// This extension adds observer functionality to the [VelvetPluginManagerContract] interface,
/// allowing you to add and remove observers for changes in the plugin manager and plugins.
extension ObservePatternOnVelvetPluginManager on VelvetPluginManagerContract {
  /// Subject for observing changes in the [VelvetPluginManager].
  static final VelvetPluginManagerSubject _managerSubject =
      VelvetPluginManagerSubject();

  /// Adds an observer to the [VelvetPluginManager].
  ///
  /// The [observer] will be notified of any changes in the [VelvetPluginManager].
  ///
  /// Parameters:
  /// - [observer]: The observer to be added to the list of observers.
  void addManagerObserver(VelvetPluginManagerObserver observer) {
    _managerSubject.addObserver(observer);
  }

  /// Removes the given [observer] from the list of observers of the VelvetPluginManager.
  ///
  /// This method removes the specified [observer] from the list of observers that are notified
  /// when changes occur in the VelvetPluginManager. Once removed, the [observer] will no longer
  /// receive notifications from the manager.
  ///
  /// Parameters:
  /// - [observer]: The observer to be removed from the list of observers.
  void removeManagerObserver(VelvetPluginManagerObserver observer) {
    _managerSubject.removeObserver(observer);
  }

  /// Subject for observing changes in the [VelvetPluginManager].
  static final VelvetPluginSubject _pluginSubject = VelvetPluginSubject();

  /// Adds a [VelvetPluginObserver] to the list of observers.
  ///
  /// The [observer] will be notified whenever a plugin event occurs.
  void addPluginObserver(VelvetPluginObserver observer) {
    _pluginSubject.addObserver(observer);
  }

  /// Removes the given [observer] from the list of plugin observers.
  ///
  /// This method removes the specified [observer] from the internal list of
  /// observers in the Velvet plugin manager. Once removed, the [observer] will
  /// no longer receive notifications about plugin events.
  ///
  /// Parameters:
  /// - [observer]: The observer to be removed from the list of observers.
  void removePluginObserver(VelvetPluginObserver observer) {
    _pluginSubject.removeObserver(observer);
  }
}
