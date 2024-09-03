part of 'use_input.dart';

/// A hook that validates the input value when the focus is lost.
///
/// This hook listens to the focus changes of the [focusNode] and validates the
/// input value in the [controller] using the provided [rules]. If there are any
/// validation errors, the [error] value is updated with the first error message.
///
/// The [focusNode] is used to determine when the input field loses focus. The
/// [controller] is used to get the current input value. The [rules] is a list
/// of validation rules to apply to the input value. The [error] is a
/// [ValueNotifier] that holds the current error message, or `null` if there are
/// no errors.
///
/// Example usage:
///
/// ```dart
/// _useValidateOnFocusLost(
///   focusNode,
///   controller,
///   rules,
///   error,
/// );
/// ```
///
/// Note: This hook should be used within a widget that has a [FocusNode] and a
/// [TextEditingController] associated with it.
void _useValidateOnFocusLost<T>(
  ValueNotifier<T> value,
  List<VelvetRule<T>> rules,
  FocusNode focusNode,
  ValueNotifier<String?> error,
) {
  useEffect(
    () {
      void listener() {
        if (focusNode.hasFocus) {
          return;
        }

        var errors = VelvetValidator.on(value.value, rules);

        if (errors.isNotEmpty) {
          error.value = errors.first;
        } else {
          error.value = null;
        }
      }

      focusNode.addListener(listener);

      return () => focusNode.removeListener(listener);
    },
    [focusNode],
  );
}
