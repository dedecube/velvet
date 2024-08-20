import 'package:velvet_framework/velvet_framework.dart';

UseTextInputReturn useNameInput() {
  return useTextInput(
    rules: [
      RequiredStringRule(),
      MinLengthRule(3),
    ],
    name: 'name',
    exceptionToMessageResolverFactories: [
      () => ExceptionToMessageResolver<FormatException>(
            (e) => translate('form.invalid_format'),
          ),
    ],
  );
}
