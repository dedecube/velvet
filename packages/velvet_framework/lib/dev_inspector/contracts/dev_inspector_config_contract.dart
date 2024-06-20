import 'package:velvet_framework/core/config.dart';
import 'package:velvet_framework/dev_inspector/providers/dev_inspector_config_provider.dart';

/// A contract defining the configuration for the developer inspector.
abstract class DevInspectorConfigContract
    implements Config<DevInspectorConfigContract> {
  /// Whether the developer inspector is enabled or not.
  bool get isEnabled;

  /// The number of taps required to activate the developer inspector.
  int get tapCount;

  @override
  ConfigProvider get toOverride => devInspectorConfigProvider;
}
