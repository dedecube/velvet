import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/hooks/use_input_state/use_input_state.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';
import 'package:velvet_framework/types.dart';

part '_form_state.dart';

FormState useForm(
  Map<String, InputState> inputs,
  Future<void> Function(Map<String, InputState> inputs) onSubmit, {
  Future<void> Function(Map<String, InputState> inputs)? onSuccess,
  ExceptionMatcher? exceptionMatcher,
}) {
  final isSubmitting = useState(false);

  Future<void> submit() async {
    isSubmitting.value = true;

    try {
      await onSubmit(inputs);

      if (onSuccess != null) {
        await onSuccess(inputs);
      }

      isSubmitting.value = false;
    } on HttpRequestException catch (e) {
      inputs.forEach((key, value) {
        if (value.exceptionMatcher != null) {
          final error = value.exceptionMatcher!(e);

          if (error != null) {
            value.setError(error);
          }
        }
      });

      if (exceptionMatcher != null) {
        exceptionMatcher(e);
      }
    }
  }

  return FormState(
    inputs: inputs,
    isSubmitting: isSubmitting,
    submit: submit,
    onSuccess: onSuccess,
  );
}
