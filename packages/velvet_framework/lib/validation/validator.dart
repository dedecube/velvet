import 'package:velvet_framework/translation/translation_item.dart';
import 'package:velvet_framework/validation/rule.dart';

class Validator {
  static List<TranslationItem> on<T>(
    T value,
    List<Rule<T>> rules,
  ) {
    List<TranslationItem> errors = [];

    for (var rule in rules) {
      var error = rule.isValid(value);

      if (error != null) {
        errors.add(error);
      }
    }

    return errors;
  }
}
