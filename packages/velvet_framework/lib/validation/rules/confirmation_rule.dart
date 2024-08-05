import 'package:velvet_framework/velvet_framework.dart';

/// A validation rule that checks if the value matches another input's value.
///
/// This rule is used to ensure that the value entered in one input matches the value entered in another input.
/// It is commonly used for password confirmation fields, where the user is asked to enter their password twice to avoid typos.
class ConfirmationRule extends Rule<String> {
  /// Creates a new instance of [ConfirmationRule].
  ///
  /// The [anotherInput] parameter is required and represents the input state of the other input to compare against.
  ConfirmationRule({required this.anotherInput});

  /// The input state of the other input to compare against.
  final InputState anotherInput;

  @override
  String? isValid(value) {
    if (value != anotherInput.value.value) {
      return translate('validation.confirmation_mismatch');
    }

    return null;
  }
}
