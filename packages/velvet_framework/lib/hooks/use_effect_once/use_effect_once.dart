import 'dart:ui';

import 'package:velvet_framework/velvet_framework.dart';

/// Runs the provided [callback] function once when the component is mounted.
///
/// The [callback] function is executed using the [useEffect] hook with an empty dependency list,
/// ensuring that it runs only once when the component is mounted.
///
/// Example usage:
/// ```dart
/// useEffectOnce(() {
///   // Code to run once when the component is mounted
/// });
/// ```

void useEffectOnce(VoidCallback? Function() callback) {
  useEffect(callback, []);
}
