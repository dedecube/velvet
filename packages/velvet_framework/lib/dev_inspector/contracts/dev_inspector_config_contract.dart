/// A contract defining the configuration for the developer inspector.
abstract class DevInspectorConfigContract {
  /// Whether the developer inspector is enabled or not.
  bool get isEnabled;

  /// The number of taps required to activate the developer inspector.
  int get tapCount;
}
