import 'package:velvet_framework/velvet_framework.dart';

class MustBeTrueRule extends Rule<bool> {
  @override
  String? isValid(bool value) {
    if (value == true) {
      return null;
    }

    return translate('validation.must_be_true');
  }
}
