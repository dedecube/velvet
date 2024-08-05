import 'package:velvet_framework/translation/translate.dart';
import 'package:velvet_framework/validation/rule.dart';

/// A validation rule that checks if a string value is required.
///
/// This rule is used to validate if a string value is empty or not. If the value is empty,
/// it returns an error message indicating that the value is required.
///
/// Example usage:
///
/// ```dart
/// String name = '';
/// RequiredStringRule rule = RequiredStringRule();
///
/// String? error = rule.isValid(name);
///
/// if (error != null) {
///   print(error); // Output: "The value is required."
/// }
/// ```
class RequiredStringRule extends Rule<String> {
  RequiredStringRule();

  @override
  String? isValid(value) {
    if (value.isEmpty) {
      return translate('validation.required_string');
    }

    return null;
  }
}
