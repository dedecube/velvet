import 'package:velvet_framework/src/translation/translate.dart';
import 'package:velvet_framework/src/validation/velvet_rule.dart';

/// This rule is used to enforce a maximum length constraint on a string value. If the length of the value exceeds the specified maximum length,
/// an error message is returned.
///
/// Example usage:
/// ```dart
/// MaxLengthRule maxLengthRule = MaxLengthRule(10);
/// String? errorMessage = maxLengthRule.isValid('Hello, World!');
/// print(errorMessage); // Output: 'The value must be at most 10 characters long.'
/// ```
class MaxLengthRule extends VelvetRule<String> {
  /// Creates a new instance of [MaxLengthRule] with the specified maximum length.
  ///
  /// The [max] parameter specifies the maximum length allowed for the string value.
  MaxLengthRule(this.max);

  /// The maximum length allowed for the string value.
  final int max;

  @override
  String? isValid(String value) {
    if (value.length > max) {
      return translate('validation.max_length', args: {'max': max.toString()});
    }

    return null;
  }
}
