part of 'use_text_input.dart';

class UseTextInputReturn extends UseInputReturn<String> {
  UseTextInputReturn({
    required super.error,
    required super.onFailure,
    required super.focusNode,
    required super.isValid,
    required super.rules,
    required super.validate,
    required super.value,
    required this.controller,
  });

  final TextEditingController controller;
}
