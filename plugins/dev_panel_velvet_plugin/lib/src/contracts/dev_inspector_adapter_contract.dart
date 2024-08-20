import 'package:flutter/material.dart';

/// A contract for the developer inspector feature.
///
/// This contract defines the required methods
/// for opening the developer inspector.
abstract interface class DevInspectorAdapterContract {
  /// Opens the developer inspector.
  ///
  /// The [context] parameter is the build context of the widget.
  open(BuildContext context);
}
