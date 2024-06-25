import 'package:velvet_framework/translation/translation_item.dart';
import 'package:velvet_framework/validation/rule.dart';

class RequiredStringRule extends Rule<String> {
  RequiredStringRule();

  @override
  TranslationItem? isValid(value) {
    if (value.isEmpty) {
      return TranslationItem(
        namespace: 'validation',
        key: 'required_string',
      );
    }

    return null;
  }
}
