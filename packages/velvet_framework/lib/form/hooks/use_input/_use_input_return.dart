part of 'use_input.dart';

class UseInputReturn<T> {
  UseInputReturn({
    required this.error,
    required this.exceptionMatcher,
    required this.focusNode,
    required this.hasError,
    required this.isValid,
    required this.rules,
    required this.validate,
    required this.value,
  });
  final ValueNotifier<String?> error;
  final ExceptionMatcher exceptionMatcher;
  final FocusNode focusNode;
  final bool hasError;
  final bool isValid;
  final List<Rule<T>> rules;
  final VoidCallback validate;
  final ValueNotifier<T?> value;
}
