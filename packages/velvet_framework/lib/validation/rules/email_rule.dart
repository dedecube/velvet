import 'package:velvet_framework/translation/translation_item.dart';
import 'package:velvet_framework/validation/rule.dart';

class EmailRule extends Rule {
  EmailRule();

  static final _emailRegExp = RegExp(
    r'^[a-zA-Z\d.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$',
  );

  @override
  isValid(value) {
    if (!_emailRegExp.hasMatch(value)) {
      return TranslationItem(namespace: 'validation', key: 'email');
    }

    return null;
  }
}
