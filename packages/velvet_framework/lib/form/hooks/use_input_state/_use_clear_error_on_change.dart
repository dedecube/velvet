part of 'use_input.dart';

/// This hook is used to clear the error value when the input text changes.
///
/// It takes a [TextEditingController] and a [ValueNotifier] as parameters.
/// The [TextEditingController] is used to control the text input field,
/// while the [ValueNotifier] is used to notify changes in the error value.
///
/// The hook creates a backup value of the current text in the [TextEditingController]
/// using the [useState] hook. It then listens for changes in the error value using
/// the [useEffect] hook. When the error value changes, the backup value is updated.
///
/// Another [useEffect] hook is used to listen for changes in the text input field.
/// When the text changes and it is different from the backup value, the error value
/// is set to null, effectively clearing the error.
///
/// This hook is useful in scenarios where you want to clear the error value when
/// the user starts typing in the input field again.
///
/// Example usage:
///
/// ```dart
/// _useClearErrorOnChange(
///   myTextEditingController,
///   myErrorValueNotifier,
/// );
/// ```
///
/// Note: This hook is part of the 'use_input.dart' file.
/// Make sure to import it before using this hook.
_useClearErrorOnChange(
  TextEditingController controller,
  ValueNotifier<String?> error,
) {
  final backupValue = useState<String>(controller.text);

  useEffect(
    () {
      backupValue.value = controller.text;

      return null;
    },
    [error.value],
  );

  useEffect(
    () {
      void listener() {
        if (controller.text == backupValue.value) {
          return;
        }

        error.value = null;
      }

      controller.addListener(listener);

      return () => controller.removeListener(listener);
    },
    [controller],
  );
}
