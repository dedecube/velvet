import 'package:velvet_framework/velvet_framework.dart';

InputOptions useInputOptions() {
  return const InputOptions(
    shouldValidateOnChange: false,
    shouldValidateOnFocusLost: false,
    shouldClearErrorOnFocus: false,
    shouldClearErrorOnChange: true,
  );
}
