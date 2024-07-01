import 'package:velvet_framework/translation/translate.dart';
import 'package:velvet_framework/validation/rule.dart';

class MaxLengthRule extends Rule<String> {
  MaxLengthRule(this.max);

  final int max;

  @override
  String? isValid(value) {
    if (value.length > max) {
      return translate('validation.max_length', args: {'max': max.toString()});
    }

    return null;
  }
}
