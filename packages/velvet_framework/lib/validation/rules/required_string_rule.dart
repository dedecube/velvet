import 'package:velvet_framework/translation/translate.dart';
import 'package:velvet_framework/validation/rule.dart';

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
