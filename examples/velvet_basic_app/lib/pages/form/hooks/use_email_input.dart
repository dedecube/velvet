import 'package:velvet_framework/velvet_framework.dart';

import 'package:velvet_basic_app/pages/form/hooks/use_options.dart';

UseTextInputReturn useEmailInput() {
  final inputOptions = useInputOptions();

  return useTextInput(
    rules: [
      RequiredStringRule(),
      EmailRule(),
    ],
    options: inputOptions,
    name: 'email',
    exceptionToMessageResolverFactories: [],
  );
}
