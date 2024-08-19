// ignore_for_file: avoid_empty_blocks
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
  void register() {
    // Intentionally empty
  }

  void boot() {
    // Intentionally empty
  }
}
