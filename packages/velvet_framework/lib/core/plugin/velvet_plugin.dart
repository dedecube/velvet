// ignore_for_file: avoid_empty_blocks, no-empty-block
import 'package:velvet_framework/core/plugin/mixins/register_helpers.dart';
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
abstract class VelvetPlugin with RegisterHelpers {
  /// The method that is called to register the plugin with the Velvet framework.
  void register() {}

  /// The method that is called to boot the plugin.
  /// This method is called after all plugins have been registered.
  void boot() {}
}
