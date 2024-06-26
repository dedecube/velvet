part of 'use_input.dart';

_useValidateOnChange(
  TextEditingController controller,
  List<Rule> rules,
  ValueNotifier<String?> error,
) {
  useEffect(
    () {
      void listener() {
        var errors = Validator.on(controller.text, rules);

        if (errors.isNotEmpty) {
          error.value = errors.first;
        } else {
          error.value = null;
        }
      }

      controller.addListener(listener);

      return () => controller.removeListener(listener);
    },
    [controller],
  );
}
