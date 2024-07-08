import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/error_handling/types.dart';
import 'package:velvet_framework/form/hooks/use_form_state/form_options.dart';
import 'package:velvet_framework/form/hooks/use_input_state/use_input.dart';

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
///   'username': useInputState(),
///   'password': useInputState(),
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
  FormOptions options = const FormOptions(),
}) {
  final isSubmitting = useState(false);
  final isValid = useState(true);

  validate({bool quietly = true}) async {
    if (quietly) {
      isValid.value = inputs.values.every((input) => input.isValid);
    } else {
      for (var input in inputs.values) {
        input.validate();
        isValid.value = inputs.values.every((input) => input.hasError == false);
      }
    }
  }

  useEffect(
    () {
      if (options.shouldValidateImmediately) {
        validate(quietly: options.shouldValidateImmediatelyQuietly);
      }

      return null;
    },
    [],
  );

  for (final input in inputs.values) {
    useEffect(
      () {
        input.controller.addListener(validate);

        return () {
          input.controller.removeListener(validate);
        };
      },
      [input.controller],
    );
  }

  Future<void> submit() async {
    isSubmitting.value = true;

    try {
      await validate(quietly: false);

      if (!isValid.value) {
        isSubmitting.value = false;

        return;
      }

      await onSubmit(inputs);

      if (onSuccess != null) {
        await onSuccess(inputs);
      }

      isSubmitting.value = false;
    } on Exception catch (exception) {
      isSubmitting.value = false;

      inputs.forEach((key, value) {
        value.exceptionMatcher(exception);
      });

      if (exceptionMatcher != null) {
        exceptionMatcher(exception);
      }
    }
  }

  return FormState(
    inputs: inputs,
    isValid: isValid,
    isSubmitting: isSubmitting,
    onSuccess: onSuccess,
    submit: submit,
    validate: validate,
  );
}
