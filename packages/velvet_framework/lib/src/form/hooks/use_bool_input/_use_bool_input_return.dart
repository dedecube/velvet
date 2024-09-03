part of 'use_bool_input.dart';

class UseBoolInputReturn extends UseInputReturn<bool> {
  UseBoolInputReturn({
    required super.error,
    required super.focusNode,
    required super.isValid,
    required super.rules,
    required super.validate,
    required super.value,
    required super.onFailure,
    required this.onChanged,
  });

  final Function(bool? value) onChanged;
}
