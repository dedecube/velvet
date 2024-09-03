import 'package:velvet_framework/src/translation/translate.dart';
import 'package:velvet_framework/src/validation/velvet_rule.dart';

class MustBeTrueRule extends VelvetRule<bool> {
  @override
  String? isValid(bool value) {
    if (value == true) {
      return null;
    }

    return translate('validation.must_be_true');
  }
}
