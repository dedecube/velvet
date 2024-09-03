import 'package:velvet_framework/src/core/event/velvet_event.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';

/// Represents an event that is triggered after a Velvet plugin has been booted.
///
/// This event provides information about the booted plugin.
class VelvetPluginAfterBoot extends VelvetEvent {
  /// Creates a new instance of [VelvetPluginAfterBoot].
  ///
  /// The [plugin] parameter represents the booted plugin.
  VelvetPluginAfterBoot(this.plugin);

  /// The booted plugin.
  final VelvetPlugin plugin;
}
