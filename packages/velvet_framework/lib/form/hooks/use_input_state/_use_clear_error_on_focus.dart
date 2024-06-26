part of 'use_input.dart';

_useClearErrorOnFocus(
  FocusNode focusNode,
  ValueNotifier<String?> error,
) {
  useEffect(
    () {
      void listener() {
        if (focusNode.hasFocus) {
          error.value = null;
        }
      }

      focusNode.addListener(listener);

      return () => focusNode.removeListener(listener);
    },
    [focusNode],
  );
}
