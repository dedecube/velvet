part of 'use_input.dart';

_useValidateOnFocusLost(
  FocusNode focusNode,
  TextEditingController controller,
  List<Rule> rules,
  ValueNotifier<TranslationItem?> error,
) {
  useEffect(
    () {
      void listener() {
        if (focusNode.hasFocus) {
          return;
        }

        var errors = Validator.on(controller.text, rules);

        if (errors.isNotEmpty) {
          error.value = errors.first;
        } else {
          error.value = null;
        }
      }

      focusNode.addListener(listener);

      return () => focusNode.removeListener(listener);
    },
    [focusNode],
  );
}
