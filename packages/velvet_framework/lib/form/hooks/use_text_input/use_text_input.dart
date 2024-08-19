import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/error_handling/types.dart';
import 'package:velvet_framework/form/hooks/use_input/input_options.dart';
import 'package:velvet_framework/form/hooks/use_input/use_input.dart';
import 'package:velvet_framework/form/providers/form_config_provider.dart';
import 'package:velvet_framework/utils/container.dart';
import 'package:velvet_framework/validation/rule.dart';

part '_use_text_input_return.dart';

typedef ExceptionMatcherFactory = ExceptionMatcher Function(
  List<ExceptionToMessageResolverFactory> exceptionToMessageResolverFactories,
  ValueNotifier<String?> error,
);

UseTextInputReturn useTextInput({
  List<Rule<String>> rules = const [],
  InputOptions? options,
  String? initialValue,
  String? name,
  List<ExceptionToMessageResolverFactory> exceptionToMessageResolverFactories =
      const [],
  ExceptionMatcherFactory? exceptionMatcherFactory,
}) {
  options ??= container().read(formConfigProvider).defaultInputOptions;

  final input = useInput<String>(
    rules: rules,
    options: options,
    initialValue: initialValue,
    name: name,
    exceptionToMessageResolverFactories: exceptionToMessageResolverFactories,
    exceptionMatcherFactory: exceptionMatcherFactory,
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
      exceptionMatcher: input.exceptionMatcher,
      focusNode: input.focusNode,
      hasError: input.hasError,
      isValid: input.isValid,
      rules: rules,
      validate: input.validate,
      value: input.value,
      controller: controller,
    ),
  );
}
