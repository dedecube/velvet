import 'dart:async';

import 'package:velvet_framework/kernel/kernel.dart';

/// The contract for a Velvet plugin.
///
/// This contract defines the required methods for a Velvet plugin.
/// A plugin must implement the `install` method, which takes a [Kernel] instance as a parameter.
/// The `install` method is responsible for installing the plugin into the Velvet framework.
///
/// Example usage:
/// ```dart
/// class MyPlugin implements VelvetPluginContract {
///   @override
///   void install(Kernel kernel) {
///     // Plugin installation logic
///   }
/// }
/// ```
abstract class VelvetPlugin {
  /// The method that is called to register the plugin with the Velvet framework.
  FutureOr<void> register() {
    return Future.value();
  }

  /// The method that is called to boot the plugin.
  /// This method is called after all plugins have been registered.
  FutureOr<void> boot() {
    return Future.value();
  }
}
