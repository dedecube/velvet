import 'package:velvet_framework/translation/translate.dart';
import 'package:velvet_framework/validation/rule.dart';

/// A validation rule for email addresses.
///
/// This rule checks if a given value is a valid email address.
/// It uses a regular expression to validate the email format.
/// If the value is not a valid email address, it returns an error message.
/// Otherwise, it returns null, indicating that the value is valid.
class EmailRule extends Rule<String> {
  EmailRule();

  static final _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  @override
  String? isValid(String value) {
    if (!_emailRegExp.hasMatch(value)) {
      return translate('validation.email');
    }

    return null;
  }
}
