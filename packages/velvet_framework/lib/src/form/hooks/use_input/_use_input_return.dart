part of 'use_input.dart';

class UseInputReturn<T> {
  UseInputReturn({
    required this.error,
    required this.onFailure,
    required this.focusNode,
    required this.isValid,
    required this.rules,
    required this.validate,
    required this.value,
  });
  final ValueNotifier<String?> error;
  final ExceptionMatcher onFailure;
  final FocusNode focusNode;
  final ValueNotifier<bool> isValid;
  final List<VelvetRule<T>> rules;
  final VoidCallback validate;
  final ValueNotifier<T?> value;

  bool get isNotValid => !isValid.value;
}
