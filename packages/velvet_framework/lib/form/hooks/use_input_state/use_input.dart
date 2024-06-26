import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/form/hooks/use_input_state/input_options.dart';
import 'package:velvet_framework/types.dart';
import 'package:velvet_framework/validation/rule.dart';
import 'package:velvet_framework/validation/validator.dart';

part '_input_state.dart';
part '_use_clear_error_on_change.dart';
part '_use_clear_error_on_focus.dart';
part '_use_validate_on_change.dart';
part '_use_validate_on_focus_lost.dart';

/// Custom hook that provides an input state for managing text input fields.
///
/// The [useInputState] hook returns an [InputState] object that encapsulates
/// the necessary state and functions for managing a text input field. This hook
/// is designed to be used within a Flutter widget.
///
/// The returned [InputState] object contains the following properties:
/// - [controller]: A [TextEditingController] instance for controlling the text
///   input field.
/// - [focusNode]: A [FocusNode] instance for managing the focus of the text
///   input field.
/// - [error]: A [String] value representing the current error message, if any.
///
/// The [InputState] object also provides the following functions:
/// - [setError]: Sets the error message for the input field.
/// - [clearError]: Clears the error message for the input field.
///
/// The [exceptionMatcher] parameter is an optional [ExceptionMatcher] that can
/// be used to customize the error handling behavior of the input state.
///
/// Example usage:
/// ```dart
/// InputState inputState = useInputState();
///
/// TextField(
///   controller: inputState.controller,
///   focusNode: inputState.focusNode,
///   decoration: InputDecoration(
///     errorText: inputState.error,
///   ),
/// )
/// ```
InputState useInput({
  List<Rule> rules = const [],
  ExceptionMatcher? exceptionMatcher,
  InputOptions options = const InputOptions(),
}) {
  final controller = useTextEditingController();
  final focusNode = useFocusNode();
  final error = useState<String?>(null);

  if (options.shouldValidateOnFocusLost) {
    _useValidateOnFocusLost(focusNode, controller, rules, error);
  }

  if (options.shouldClearErrorOnFocus) {
    _useClearErrorOnFocus(focusNode, error);
  }

  if (options.shouldClearErrorOnChange) {
    _useClearErrorOnChange(controller, error);
  }

  if (options.shouldValidateOnChange) {
    _useValidateOnChange(controller, rules, error);
  }

  return InputState(
    controller: controller,
    focusNode: focusNode,
    error: error,
    exceptionMatcher: exceptionMatcher,
    rules: rules,
  );
}
