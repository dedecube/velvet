import 'package:velvet_framework/core/event/velvet_event.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

/// Represents an event that is triggered after a Velvet plugin is registered.
///
/// This event provides information about the registered plugin.
class VelvetPluginAfterRegister extends VelvetEvent {
  /// Creates a new instance of [VelvetPluginAfterRegister] with the given [plugin].
  VelvetPluginAfterRegister(this.plugin);

  /// The registered Velvet plugin.
  final VelvetPlugin plugin;
}
