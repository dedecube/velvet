/// The base class for all validation rules.
///
/// A validation rule is used to validate a value of type [T].
abstract class Rule<T> {
  /// Validates the given [value] against the rule.
  ///
  /// The [name] parameter is used to provide a name for the value being validated, which can be used in error messages.
  ///
  /// Returns a [TranslationItem] object if the value is invalid, otherwise returns `null`.
  String? isValid(
    T value,
  );
}
