import 'package:velvet_basic_app/presentation/pages/form/hooks/use_options.dart';
import 'package:velvet_framework/velvet_framework.dart';

InputState useEmailInput() {
  final inputOptions = useInputOptions();

  return useInput(
    rules: [
      RequiredStringRule(),
      EmailRule(),
    ],
    options: inputOptions,
    name: 'email',
  );
}
