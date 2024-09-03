import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Executes a callback function after the widget has finished building.
///
/// This hook is useful when you need to perform an action after the widget has been fully built and rendered on the screen.
/// It ensures that the callback is only executed once, after the initial build.
///
/// The [callback] function is called after the widget has finished building.
/// It is executed within the [WidgetsBinding.instance.addPostFrameCallback] method, which schedules the callback to be called after the frame has been rendered.
///
/// Example usage:
/// ```dart
/// usePostBuildCallback(() {
///   // Perform some action after the widget has finished building
/// });
/// ```
void usePostBuildCallback(VoidCallback callback) {
  final didBuild = useRef(false);

  useEffect(
    () {
      if (!didBuild.value) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          callback();
        });
        didBuild.value = true;
      }

      return () {
        didBuild.value = false;
      };
    },
    [],
  );
}
