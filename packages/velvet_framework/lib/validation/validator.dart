import 'package:velvet_framework/validation/rule.dart';

/// The `Validator` class provides a way to validate a value against a list of rules.
class Validator {
  /// Validates a value against a list of rules.
  ///
  /// The `value` parameter represents the value to be validated.
  ///
  /// The `rules` parameter is a list of `Rule` objects that define the validation rules.
  ///
  /// Returns a list of error messages if the value fails any of the validation rules.
  /// Returns an empty list if the value passes all the validation rules.
  static List<String> on<T>(
    T value,
    List<Rule<T>> rules,
  ) {
    List<String> errors = [];

    for (var rule in rules) {
      var error = rule.isValid(value);

      if (error != null) {
        errors.add(error);
      }
    }

    return errors;
  }
}
