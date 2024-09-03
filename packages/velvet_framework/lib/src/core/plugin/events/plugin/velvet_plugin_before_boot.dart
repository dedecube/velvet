import 'package:velvet_framework/src/core/event/velvet_event.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';

/// Represents an event that is triggered before a Velvet plugin is booted.
///
/// This event provides information about the plugin that is about to be booted.
class VelvetPluginBeforeBoot extends VelvetEvent {
  /// Creates a new instance of [VelvetPluginBeforeBoot] with the given [plugin].
  VelvetPluginBeforeBoot(this.plugin);

  /// The plugin that is about to be booted.
  final VelvetPlugin plugin;
}
