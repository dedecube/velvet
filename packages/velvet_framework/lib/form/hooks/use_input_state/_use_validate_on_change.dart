part of 'use_input.dart';

/// A hook that validates the input value on change.
///
/// This hook listens to changes in the [controller] and validates the input value
/// against the provided [rules]. If any validation errors occur, the [error] value
/// is updated with the first error message. If no errors occur, the [error] value
/// is set to `null`.
///
/// The [controller] is a [TextEditingController] that holds the input value.
/// The [rules] is a list of [Rule] objects that define the validation rules.
/// The [error] is a [ValueNotifier] that holds the current error message.
///
/// Example usage:
///
/// ```dart
/// TextEditingController controller = TextEditingController();
/// ValueNotifier<String?> error = ValueNotifier(null);
///
/// _useValidateOnChange(controller, rules, error);
/// ```
_useValidateOnChange(
  TextEditingController controller,
  List<Rule> rules,
  ValueNotifier<String?> error,
) {
  useEffect(
    () {
      void listener() {
        var errors = Validator.on(controller.text, rules);

        if (errors.isNotEmpty) {
          error.value = errors.first;
        } else {
          error.value = null;
        }
      }

      controller.addListener(listener);

      return () => controller.removeListener(listener);
    },
    [controller],
  );
}
