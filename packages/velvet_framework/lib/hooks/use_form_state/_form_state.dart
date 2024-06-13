part of 'use_form_state.dart';

class FormState {
  FormState({
    required this.inputs,
    required this.isSubmitting,
    required this.submit,
    this.onSuccess,
    this.exceptionMatcher,
  });

  final Map<String, InputState> inputs;
  final ValueNotifier<bool> isSubmitting;
  final AsyncCallback submit;
  final Future<void> Function(Map<String, InputState> inputs)? onSuccess;
  ExceptionMatcher? exceptionMatcher;
}
