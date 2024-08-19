import 'package:velvet_basic_app/exceptions/example_exception.dart';
import 'package:velvet_basic_app/presentation/pages/form/hooks/use_options.dart';
import 'package:velvet_framework/form/hooks/use_text_input/use_text_input.dart';
import 'package:velvet_framework/velvet_framework.dart';

UseTextInputReturn useEmailInput() {
  final inputOptions = useInputOptions();

  return useTextInput(
    rules: [
      RequiredStringRule(),
      EmailRule(),
    ],
    options: inputOptions,
    name: 'email',
    exceptionToMessageResolverFactories: [
      () => ExceptionToMessageResolver<ExampleException>(
            (e) => translate('form.example_error'),
          ),
    ],
  );
}
