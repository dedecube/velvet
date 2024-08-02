import 'package:velvet_framework/velvet_framework.dart';

class ConfirmationRule extends Rule<String> {
  ConfirmationRule({required this.anotherInput});

  final InputState anotherInput;

  @override
  String? isValid(value) {
    if (value != anotherInput.value.value) {
      return translate('validation.confirmation_mismatch');
    }

    return null;
  }
}
