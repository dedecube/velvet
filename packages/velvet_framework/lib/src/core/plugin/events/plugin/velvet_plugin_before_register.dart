import 'package:velvet_framework/src/core/event/velvet_event.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';

/// Represents an event that is triggered before a Velvet plugin is registered.
///
/// This event provides information about the plugin being registered.
class VelvetPluginBeforeRegister extends VelvetEvent {
  /// Creates a new instance of [VelvetPluginBeforeRegister].
  ///
  /// The [plugin] parameter represents the Velvet plugin being registered.
  VelvetPluginBeforeRegister(this.plugin);

  /// The Velvet plugin being registered.
  final VelvetPlugin plugin;
}
