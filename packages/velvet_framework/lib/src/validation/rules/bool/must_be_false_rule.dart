import 'package:velvet_framework/src/translation/translate.dart';
import 'package:velvet_framework/src/validation/velvet_rule.dart';

/// A validation rule that checks if a boolean value is false.
///
/// This rule is used to validate that a given boolean value is false. If the value is false, the validation passes.
/// If the value is true, the validation fails and an error message is returned.
///
/// Example usage:
/// ```dart
/// MustBeFalseRule rule = MustBeFalseRule();
/// String? errorMessage = rule.isValid(false); // returns null
/// errorMessage = rule.isValid(true); // returns 'The value must be false'
/// ```
class MustBeFalseRule extends VelvetRule<bool> {
  @override
  String? isValid(bool value) {
    if (value == false) {
      return null;
    }

    return translate('validation.must_be_false');
  }
}
