import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

part '_use_clear_error_on_change.dart';
part '_use_clear_error_on_focus.dart';
part '_use_exception_matcher.dart';
part '_use_initial_value_for_debug.dart';
part '_use_input_return.dart';
part '_use_validate_on_change.dart';
part '_use_validate_on_focus_lost.dart';

typedef InputOnFailure = ExceptionMatcher;

typedef InputOnFailureFactory = InputOnFailure Function(
  List<ExceptionToMessageResolverFactory> exceptionToMessageResolverFactories,
  ValueNotifier<String?> error,
);

/// Custom hook that provides an input state for managing text input fields.
///
/// The [useInputState] hook returns an [InputState] object that encapsulates
/// the necessary state and functions for managing a text input field. This hook
/// is designed to be used within a Flutter widget.
///
/// The [onFailure] parameter is an optional [ExceptionMatcher] that can
/// be used to customize the error handling behavior of the input state.
///
/// The [rules] parameter is a list of [Rule] objects that define the local validation
/// rules for the input field.
///
/// The [options] parameter is an [InputOptions] object that allows you to customize
/// the behavior of the input field.
///
/// The [initialValue] parameter is a string representing the initial value of the
/// input field. Default is an empty string.
///
/// The [name] parameter is an optional string representing the name of the input field.
/// It is used for error messages and debugging purposes.
///
/// The [exceptionToMessageResolverFactories] parameter is a list of
/// [ExceptionToMessageResolverFactory] objects that define the mapping between
/// exceptions and error messages for the input field.
///
/// Example usage:
/// ```dart
/// InputState inputState = useInput(
///   rules: [
///     RequiredStringRule(),
///     MinLengthRule(6),
///   ],
///   options: InputOptions(
///     shouldValidateOnFocusLost: true,
///     shouldClearErrorOnFocus: true,
///     shouldClearErrorOnChange: true,
///     shouldValidateOnChange: true,
///   ),
///   initialValue: 'Hello World',
///   name: 'myInput',
///   exceptionToMessageResolverFactories: [
///    () => ExceptionToMessageResolver<FormatException>(
///          (e) => translate('form.invalid_format'),
///        ),
///   ],
/// );
///
/// TextField(
///   controller: inputState.controller,
///   focusNode: inputState.focusNode,
///   decoration: InputDecoration(
///     errorText: inputState.error,
///   ),
/// )
/// ```
UseInputReturn<T> useInput<T>({
  List<Rule<T>> rules = const [],
  InputOptions? options,
  T? initialValue,
  String? name,
  List<ExceptionToMessageResolverFactory> exceptionToMessageResolverFactories =
      const [],
  InputOnFailureFactory? onFailureFactory,
}) {
  if (kDebugMode && name != null) {
    initialValue = _useInitialValueForDebug<T>(name, initialValue);
  }

  options ??= config<FormConfigContract>().defaultInputOptions;

  final focusNode = useFocusNode();
  final error = useState<String?>(null);
  final value = useState<T?>(initialValue);
  final isValid = useState(false);

  final onFailure = useMemoized(
    () {
      return onFailureFactory != null
          ? onFailureFactory(exceptionToMessageResolverFactories, error)
          : container.get<FormConfigContract>().defaultInputOnFailureFactory(
                exceptionToMessageResolverFactories,
                error,
              );
    },
    [],
  );

  if (options.shouldValidateOnFocusLost) {
    _useValidateOnFocusLost(value, rules, focusNode, error);
  }

  if (options.shouldClearErrorOnFocus) {
    _useClearErrorOnFocus(focusNode, error);
  }

  if (options.shouldClearErrorOnChange) {
    _useClearErrorOnChange(value, error);
  }

  if (options.shouldValidateOnChange) {
    _useValidateOnChange(value, rules, error);
  }

  final validate = useCallback(
    () {
      final errors = Validator.on(
        value.value,
        rules,
      );

      if (errors.isNotEmpty) {
        error.value = errors.first;
      } else {
        error.value = null;
      }
    },
    [],
  );

  void updateIsValid() {
    isValid.value = Validator.on(
      value.value,
      rules,
    ).isEmpty;
  }

  useEffectOnce(
    () {
      updateIsValid();

      value.addListener(updateIsValid);

      return () => value.removeListener(updateIsValid);
    },
  );

  return useMemoized(
    () => UseInputReturn(
      error: error,
      onFailure: onFailure,
      focusNode: focusNode,
      isValid: isValid,
      rules: rules,
      validate: validate,
      value: value,
    ),
  );
}
