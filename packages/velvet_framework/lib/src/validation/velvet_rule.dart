/// The base class for all validation rules.
///
/// A validation rule is used to validate a value of type [T].
abstract class VelvetRule<T> {
  VelvetRule();

  /// Validates the given [value] against the rule.
  ///
  /// Returns a [TranslationItem] object if the value is invalid, otherwise returns `null`.
  String? isValid(
    T value,
  );
}
