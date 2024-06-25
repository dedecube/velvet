import 'package:velvet_framework/translation/translation_item.dart';
import 'package:velvet_framework/validation/rule.dart';

class MinLengthRule extends Rule<String> {
  MinLengthRule(this.min);

  final int min;

  @override
  TranslationItem? isValid(value) {
    if (value.length < min) {
      return TranslationItem(
        namespace: 'validation',
        key: 'min_length',
        args: {'min': min.toString()},
      );
    }

    return null;
  }
}
