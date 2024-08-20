import 'package:velvet_framework/velvet_framework.dart';

/// FIXME[epic=get-it] - should be injected
/// A validation rule that checks if the length of a string is fixed.
///
/// This rule is used to ensure that a string has a specific length.
/// It can be used in form validation or any other scenario where
/// a fixed length is required.
///
/// Example usage:
/// ```dart
/// final rule = FixedLengthRule(5);
/// final String? error = rule.isValid('hello');
/// print(error); // null
///
/// final String? error2 = rule.isValid('world');
/// print(error2); // 'The length must be 5'
/// ```
class FixedLengthRule extends Rule<String> {
  /// Creates a new instance of the [FixedLengthRule] with the specified [length].
  FixedLengthRule(this.length);

  /// The fixed length that the string should have.
  final int length;

  @override
  String? isValid(String value) {
    if (value.length != length) {
      return translate(
        'validation.fixed_length',
        args: {'length': length.toString()},
      );
    }

    return null;
  }
}
