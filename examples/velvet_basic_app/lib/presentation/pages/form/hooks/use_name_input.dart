import 'package:velvet_basic_app/presentation/pages/form/hooks/use_options.dart';
import 'package:velvet_framework/velvet_framework.dart';

InputState useNameInput() {
  final inputOptions = useInputOptions();

  return useInput(
    rules: [
      RequiredStringRule(),
      MinLengthRule(3),
    ],
    options: inputOptions,
    name: 'name',
    exceptionToMessageResolverFactories: [
      () => ExceptionToMessageResolver<FormatException>(
            (e) => translate('form.invalid_format'),
          ),
    ],
  );
}
