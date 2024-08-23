import 'dart:async';

import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

/// Contract for managing Velvet plugins.
///
/// This contract defines the methods for adding plugins and running the register and boot processes.
/// The [addPlugin] method is used to add a [VelvetPlugin] to the manager.
/// The [runRegister] method is responsible for running the register process.
/// The [runBoot] method is responsible for running the boot process.
///
/// Note: The [runRegister] and [runBoot] methods are currently accessible from the outside, which may be a potential issue.
abstract class VelvetPluginManagerContract {
  /// Adds a [VelvetPlugin] to the manager.
  void addPlugin(VelvetPlugin plugin);

  /// Runs the register process.
  ///
  /// Returns a [Future] that completes when the register process is finished.
  FutureOr<void> runRegister();

  /// Runs the boot process.
  ///
  /// Returns a [Future] that completes when the boot process is finished.
  FutureOr<void> runBoot();
}
