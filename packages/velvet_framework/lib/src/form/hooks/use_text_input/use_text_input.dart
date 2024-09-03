import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:velvet_framework/src/core/utils/config.dart';
import 'package:velvet_framework/src/error_handling/types.dart';
import 'package:velvet_framework/src/validation/velvet_rule.dart';
import 'package:velvet_framework/src/form/contracts/form_config_contract.dart';
import 'package:velvet_framework/src/form/hooks/use_input/input_options.dart';
import 'package:velvet_framework/src/form/hooks/use_input/use_input.dart';

part '_use_text_input_return.dart';

UseTextInputReturn useTextInput({
  List<VelvetRule<String>> rules = const [],
  InputOptions? options,
  String? initialValue,
  String? name,
  List<ExceptionToMessageResolverFactory> exceptionToMessageResolverFactories =
      const [],
  InputOnFailureFactory? onFailureFactory,
}) {
  options ??= config<FormConfigContract>().defaultInputOptions;

  final input = useInput<String>(
    rules: rules,
    options: options,
    initialValue: initialValue ?? '',
    name: name,
    exceptionToMessageResolverFactories: exceptionToMessageResolverFactories,
    onFailureFactory: onFailureFactory,
  );

  final controller = useTextEditingController(text: input.value.value);

  void trimOrNot() {
    input.value.value =
        options!.shouldTrim ? controller.text.trim() : controller.text;
  }

  useEffect(
    () {
      trimOrNot();

      controller.addListener(trimOrNot);

      return () => controller.removeListener(trimOrNot);
    },
    [controller],
  );

  return useMemoized(
    () => UseTextInputReturn(
      error: input.error,
      onFailure: input.onFailure,
      focusNode: input.focusNode,
      isValid: input.isValid,
      rules: rules,
      validate: input.validate,
      value: input.value,
      controller: controller,
    ),
  );
}
