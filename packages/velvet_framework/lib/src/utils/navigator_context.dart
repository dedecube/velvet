import 'package:flutter/widgets.dart';

import 'package:velvet_framework/src/core/utils/navigator_key.dart';

/// Returns the current build context of the navigator wrapped by GoRouter.
///
/// Example usage:
/// ```dart
/// BuildContext context = navigatorContext();
/// ```
///
/// Note: This function assumes that the [Kernel.navigatorKey] has been
/// properly initialized and is not null.
BuildContext navigatorContext() {
  return navigatorKey().currentContext!;
}
