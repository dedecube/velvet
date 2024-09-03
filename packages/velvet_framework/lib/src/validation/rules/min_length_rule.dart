import 'package:velvet_framework/src/translation/translate.dart';
import 'package:velvet_framework/src/validation/velvet_rule.dart';

/// A validation rule that checks if a string has a minimum length.
///
/// This rule is used to validate that a given string has a length greater than or equal to a specified minimum value.
/// If the string length is less than the minimum value, an error message is returned.
class MinLengthRule extends VelvetRule<String> {
  /// Creates a new instance of the [MinLengthRule] with the specified minimum length.
  ///
  /// The [min] parameter specifies the minimum length required for the string to be considered valid.
  MinLengthRule(this.min);

  /// The minimum length required for the string to be considered valid.
  final int min;

  @override
  String? isValid(String value) {
    if (value.length < min) {
      return translate(
        'validation.min_length',
        args: {'min': min.toString()},
      );
    }

    return null;
  }
}
