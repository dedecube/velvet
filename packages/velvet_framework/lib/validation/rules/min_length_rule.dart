import 'package:velvet_framework/translation/translate.dart';
import 'package:velvet_framework/validation/rule.dart';

class MinLengthRule extends Rule<String> {
  MinLengthRule(this.min);

  final int min;

  @override
  String? isValid(value) {
    if (value.length < min) {
      return translate(
        'validation.min_length',
        args: {'min': min.toString()},
      );
    }

    return null;
  }
}
