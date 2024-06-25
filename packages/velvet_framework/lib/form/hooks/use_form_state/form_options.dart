class FormOptions {
  const FormOptions({
    this.shouldValidateImmediately = true,
    this.shouldValidateImmediatelyQuietly = true,
  });

  final bool shouldValidateImmediately;
  final bool shouldValidateImmediatelyQuietly;
}
