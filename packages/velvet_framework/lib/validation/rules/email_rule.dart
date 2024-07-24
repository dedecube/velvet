import 'package:velvet_framework/translation/translate.dart';
import 'package:velvet_framework/validation/rule.dart';

class EmailRule extends Rule<String> {
  EmailRule();

  static final _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  @override
  isValid(value) {
    if (!_emailRegExp.hasMatch(value)) {
      return translate('validation.email');
    }

    return null;
  }
}
