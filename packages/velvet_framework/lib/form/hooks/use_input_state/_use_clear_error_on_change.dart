part of 'use_input.dart';

_useClearErrorOnChange(
  TextEditingController controller,
  ValueNotifier<String?> error,
) {
  final backupValue = useState<String>(controller.text);

  useEffect(
    () {
      backupValue.value = controller.text;

      return null;
    },
    [error.value],
  );

  useEffect(
    () {
      void listener() {
        if (controller.text == backupValue.value) {
          return;
        }

        error.value = null;
      }

      controller.addListener(listener);

      return () => controller.removeListener(listener);
    },
    [controller],
  );
}
