import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/hooks/use_input_state/use_input_state.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';
import 'package:velvet_framework/types.dart';

part '_form_state.dart';

/// A custom hook for managing form state in Flutter applications.
///
/// This hook takes a map of [inputs] and a [onSubmit] function as parameters.
/// The [inputs] map represents the form inputs and their corresponding state.
/// The [onSubmit] function is called when the form is submitted.
///
/// Optional parameters include [onSuccess], [exceptionMatcher].
/// The [onSuccess] function is called after the form submission is successful.
/// The [exceptionMatcher] is used to handle specific exceptions that may occur during form submission.
///
/// The hook returns a [FormState] object that encapsulates the form state and provides methods for interacting with it.
///
/// Example usage:
/// ```dart
/// Map<String, InputState> inputs = {
///   'username': InputState(),
///   'password': InputState(),
/// };
///
/// Future<void> submitForm(Map<String, InputState> inputs) async {
///   // Perform form submission logic
/// }
///
/// FormState formState = useForm(inputs, submitForm);
///
/// // Access form state properties and methods
/// bool isSubmitting = formState.isSubmitting.value;
/// formState.submit();
/// ```
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
