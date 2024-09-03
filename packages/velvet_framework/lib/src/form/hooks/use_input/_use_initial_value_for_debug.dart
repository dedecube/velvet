part of 'use_input.dart';

/// Retrieves the initial value for debugging purposes.
///
/// This function is used internally by the `useInput` hook to retrieve the initial value of an input field.
/// It takes in the [name] of the input field and the [initialValue] as parameters.
/// The [name] parameter is used to look up the default value from the `formConfigProvider`.
/// If a default value is found, it is returned. Otherwise, the [initialValue] is returned.
///
/// Usage:
/// ```dart
/// String value = _useInitialValueForDebug('username', initialValue);
/// ```
///
/// Note: This function is part of the `useInput` framework and should not be called directly.
T? _useInitialValueForDebug<T>(String name, T? initialValue) {
  final formConfig = config<FormConfigContract>();

  if (!formConfig.shouldUsePrecompiledValuesEnabled) {
    return initialValue;
  }

  return formConfig.precompiledValues.get<T>(
    key: name,
    defaultValue: initialValue,
  );
}
