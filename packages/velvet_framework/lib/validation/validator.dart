import 'package:velvet_framework/validation/rule.dart';

class Validator {
  static List<String> on<T>(
    T value,
    List<Rule<T>> rules,
  ) {
    List<String> errors = [];

    for (var rule in rules) {
      var error = rule.isValid(value);

      if (error != null) {
        errors.add(error);
      }
    }

    return errors;
  }
}
