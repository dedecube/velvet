class InputOptions {
  const InputOptions({
    this.shouldValidateOnChange = false,
    this.shouldValidateOnFocusLost = true,
    this.shouldClearErrorOnFocus = true,
    this.shouldClearErrorOnChange = false,
  });

  final bool shouldValidateOnChange;
  final bool shouldValidateOnFocusLost;
  final bool shouldClearErrorOnFocus;
  final bool shouldClearErrorOnChange;
}
