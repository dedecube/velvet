import 'package:flutter/foundation.dart';
import 'package:velvet_framework/velvet_framework.dart';

typedef UseFormReturn = ({
  ValueNotifier<bool> isSubmitting,
  ValueNotifier<bool> isValid,
  AsyncCallback submit,
  Future<void> Function({bool quietly}) validate,
});

typedef FormOnSuccess = AsyncCallback;

typedef FormOnFailure = ExceptionMatcher;

/// A custom hook for managing form state in Flutter applications.
///
/// This hook takes a map of [inputs] and a [onSubmit] function as parameters.
/// The [inputs] map represents the form inputs and their corresponding state.
/// The [onSubmit] function is called when the form is submitted.
///
/// Optional parameters include [onSuccess], [onFailure].
/// The [onSuccess] function is called after the form submission is successful.
/// The [onFailure] is used to handle specific exceptions that may occur during form submission.
///
/// The hook returns a [FormState] object that encapsulates the form state and provides methods for interacting with it.
///
/// Example usage:
/// ```dart
/// final username = useTextInput();
/// final password = useTextInput();
///
/// Future<void> submitForm() async {
///   // Perform form submission logic
/// }
///
/// final form = useForm(inputs, submitForm);
///
/// // Access form state properties and methods
/// bool isSubmitting = formState.isSubmitting.value;
/// formState.submit();
/// ```
UseFormReturn useForm(
  List<UseInputReturn> inputs,
  AsyncCallback onSubmit, {
  FormOnSuccess? onSuccess,
  FormOnFailure? onFailure,
  FormOptions options = const FormOptions(),
}) {
  final isSubmitting = useState(false);
  final isValid = useState(true);

  onFailure = useMemoized(() {
    onFailure ??= config<FormConfigContract>().defaultFormOnFailure;

    return onFailure;
  });

  Future<void> validate({bool quietly = true}) async {
    if (!quietly) {
      for (var input in inputs) {
        input.validate();
      }
    }

    isValid.value = inputs.every((input) => input.isValid.value);
  }

  useEffectOnce(() {
    if (options.shouldValidateImmediately) {
      validate(quietly: options.shouldValidateImmediatelyQuietly);
    }

    return null;
  });

  for (final input in inputs) {
    useEffectOnce(() {
      input.value.addListener(validate);

      return () {
        input.value.removeListener(validate);
      };
    });
  }

  Future<void> submit() async {
    isSubmitting.value = true;

    try {
      validate(quietly: false);

      if (!isValid.value) {
        isSubmitting.value = false;

        return;
      }

      await onSubmit();

      isSubmitting.value = false;

      if (onSuccess != null) {
        await onSuccess();
      }
    } on Exception catch (exception) {
      isSubmitting.value = false;

      for (var input in inputs) {
        if (exception is BagException) {
          for (var item in exception.exceptions) {
            input.onFailure(item);
          }
        } else {
          input.onFailure(exception);
        }
      }

      if (onFailure != null) {
        onFailure!(exception);
      }
    }
  }

  return useMemoized(
    () => (
      isSubmitting: isSubmitting,
      isValid: isValid,
      submit: submit,
      validate: validate,
    ),
  );
}
