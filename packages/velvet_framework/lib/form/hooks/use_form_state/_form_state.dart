part of 'use_form.dart';

class FormState {
  FormState({
    required this.inputs,
    required this.isSubmitting,
    required this.isValid,
    required submit,
    required validate,
    this.onSuccess,
    this.exceptionMatcher,
  })  : _submit = submit,
        _validate = validate;

  final Map<String, InputState> inputs;

  final ValueNotifier<bool> isSubmitting;

  final ValueNotifier<bool> isValid;

  final AsyncCallback _submit;

  final Future<Null> Function({required bool quietly}) _validate;

  final Future<void> Function(Map<String, InputState> inputs)? onSuccess;

  ExceptionMatcher? exceptionMatcher;

  Future<void> submit() => _submit();

  Future<Null> validate({required bool quietly}) => _validate(quietly: quietly);
}
