part of 'use_input.dart';

/// A hook that clears the error value when the associated [FocusNode] gains focus.
///
/// This hook is used in conjunction with the `useInput` hook to manage the error state of an input field.
/// When the [FocusNode] associated with the input field gains focus, the error value is set to `null`,
/// indicating that the input field is no longer in an error state.
///
/// Usage:
/// ```dart
/// _useClearErrorOnFocus(
///   focusNode,
///   error,
/// );
/// ```
///
/// - `focusNode`: The [FocusNode] associated with the input field.
/// - `error`: A [ValueNotifier] that holds the error value of the input field.
void _useClearErrorOnFocus(
  FocusNode focusNode,
  ValueNotifier<String?> error,
) {
  useEffect(
    () {
      void listener() {
        if (focusNode.hasFocus) {
          error.value = null;
        }
      }

      focusNode.addListener(listener);

      return () => focusNode.removeListener(listener);
    },
    [focusNode],
  );
}
