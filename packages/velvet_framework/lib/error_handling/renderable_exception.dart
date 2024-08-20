import 'package:flutter/material.dart';

/// The contract for exceptions that can be rendered in the UI.
///
/// This contract defines a method `render` that takes a [BuildContext] as a parameter.
/// Implementing classes should provide an implementation for the `render` method
/// to display the exception in the user interface.
abstract class RenderableException {
  /// Renders the exception in the UI.
  ///
  /// The [context] parameter is the build context of the widget tree where the exception
  /// should be rendered. Implementing classes should provide an implementation for this method
  /// to display the exception in the user interface.
  void render(BuildContext context);
}
