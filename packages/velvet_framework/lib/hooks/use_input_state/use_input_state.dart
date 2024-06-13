import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/types.dart';

part '_input_state.dart';

InputState useInputState({ExceptionMatcher? exceptionMatcher}) {
  final controller = useTextEditingController();
  final focusNode = useFocusNode();
  final error = useState<String?>(null);

  useEffect(
    () {
      void listener() {
        if (error.value != null) {
          error.value = null;
        }
      }

      controller.addListener(listener);

      return () => controller.removeListener(listener);
    },
    [controller],
  );

  void setError(String? errorMessage) {
    error.value = errorMessage;
  }

  void clearError() {
    error.value = null;
  }

  return InputState(
    controller: controller,
    focusNode: focusNode,
    error: error.value,
    setError: setError,
    clearError: clearError,
    exceptionMatcher: exceptionMatcher,
  );
}
