import 'package:flutter/widgets.dart';
import 'package:velvet_framework/kernel/kernel.dart';

/// Returns the current build context of the kernel widget.
///
/// This function is used to retrieve the build context of the kernel widget,
/// which is necessary for accessing the properties and methods of the widget.
/// It is typically used within the framework to perform operations that require
/// the context of the kernel widget.
///
/// Example usage:
/// ```dart
/// BuildContext context = kernelContext();
/// ```
///
/// Note: This function assumes that the [Kernel.resolutionKey] has been
/// properly initialized and is not null.
BuildContext kernelContext() {
  return Kernel.resolutionKey.currentContext!;
}
