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
abstract class VelvetPluginContract {
  /// Installs the plugin into the Velvet framework.
  ///
  /// The [kernel] parameter is an instance of the [Kernel] class, which provides access to the
  /// core functionality of the Velvet framework.
  void install(Kernel kernel);
}
