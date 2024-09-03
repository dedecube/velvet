import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:velvet_framework/src/validation/velvet_rule.dart';
import 'package:velvet_framework/src/form/hooks/use_input/use_input.dart';

part '_use_bool_input_return.dart';

UseBoolInputReturn useBoolInput({
  bool initialValue = false,
  List<VelvetRule<bool>> rules = const [],
  String? name,
}) {
  final input = useInput<bool>(
    initialValue: initialValue,
    rules: rules,
    name: name,
  );

  final onChanged = useCallback((bool? value) {
    return input.value.value = value ?? false;
  });

  return useMemoized(
    () => UseBoolInputReturn(
      error: input.error,
      focusNode: input.focusNode,
      isValid: input.isValid,
      rules: input.rules,
      validate: input.validate,
      value: input.value,
      onChanged: onChanged,
      onFailure: input.onFailure,
    ),
  );
}
