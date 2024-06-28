part of 'use_input.dart';

/// A class that encapsulates the state and behavior of a text input field.
///
/// The [InputState] class is used to manage the state and behavior of a text
/// input field in a Velvet application. It holds the necessary controllers,
/// focus nodes, error handling, and other relevant properties to manage the
/// input field effectively.
///
/// This class is designed to be used in conjunction with the [useInputState]
/// hook, which initializes and returns an instance of [InputState].
///
/// Properties:
/// - [controller]: A [TextEditingController] instance that manages the text
///   being edited in the input field.
/// - [focusNode]: A [FocusNode] instance that manages the focus of the input
///   field.
/// - [error]: An optional [String] that represents the current error message,
///   if any. This can be used to display validation errors or other messages
///   related to the input field.
///
/// Methods:
/// - [setError]: A function that sets the error message for the input field.
/// - [clearError]: A function that clears the current error message for the
///   input field.
///
/// Optional:
/// - [exceptionMatcher]: An optional [ExceptionMatcher] that can be used to
///   customize the error handling behavior of the input state.
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
class InputState {
  /// Creates an instance of [InputState].
  ///
  /// The [controller] and [focusNode] are required to manage the text input
  /// field and its focus. The [setError] and [clearError] functions are
  /// required for managing error states. The [error] and [exceptionMatcher]
  /// are optional and can be used to provide additional error handling
  /// capabilities.
  InputState({
    required this.controller,
    required this.focusNode,
    required this.error,
    required this.exceptionMatcher,
    this.rules = const [],
  });

  /// The [TextEditingController] instance for controlling the text input field.
  final TextEditingController controller;

  /// The [FocusNode] instance for managing the focus of the text input field.
  final FocusNode focusNode;

  /// The current error message, if any.
  final ValueNotifier<String?> error;

  /// An optional [ExceptionMatcher] that can be used to customize the error
  /// handling behavior of the input state.
  ExceptionMatcher exceptionMatcher;

  /// A list of validation rules to be applied to the input field.
  List<Rule> rules;

  get value => controller.text;

  get hasError => error.value != null;

  /// Validates the input field against the defined rules.
  validate() {
    final errors = Validator.on(
      value,
      rules,
    );

    if (errors.isNotEmpty) {
      error.value = errors.first;
    } else {
      error.value = null;
    }
  }

  get isValid => Validator.on(
        value,
        rules,
      ).isEmpty;
}
