/// Represents the options for an input field.
class InputOptions {
  /// Creates a new instance of [InputOptions].
  ///
  /// The [shouldValidateOnChange] determines whether the input should be validated on every change.
  /// The [shouldValidateOnFocusLost] determines whether the input should be validated when it loses focus.
  /// The [shouldClearErrorOnFocus] determines whether the error should be cleared when the input gains focus.
  /// The [shouldClearErrorOnChange] determines whether the error should be cleared on every change.
  const InputOptions({
    this.shouldValidateOnChange = false,
    this.shouldValidateOnFocusLost = true,
    this.shouldClearErrorOnFocus = true,
    this.shouldClearErrorOnChange = false,
  });

  /// Determines whether the input should be validated on every change.
  final bool shouldValidateOnChange;

  /// Determines whether the input should be validated when it loses focus.
  final bool shouldValidateOnFocusLost;

  /// Determines whether the error should be cleared when the input gains focus.
  final bool shouldClearErrorOnFocus;

  /// Determines whether the error should be cleared on every change.
  final bool shouldClearErrorOnChange;
}
