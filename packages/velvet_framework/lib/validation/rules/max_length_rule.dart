import 'package:velvet_framework/translation/translation_item.dart';
import 'package:velvet_framework/validation/rule.dart';

class MaxLengthRule extends Rule<String> {
  MaxLengthRule(this.max);

  final int max;

  @override
  TranslationItem? isValid(value) {
    if (value.length > max) {
      return TranslationItem(
        namespace: 'validation',
        key: 'max_length',
        args: {'max': max.toString()},
      );
    }

    return null;
  }
}
