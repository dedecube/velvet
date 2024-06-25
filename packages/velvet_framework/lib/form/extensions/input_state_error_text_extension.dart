import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/form/hooks/use_input_state/use_input.dart';
import 'package:velvet_framework/translation/exports.dart';

extension InputStateErrorTextExtension on InputState {
  String? errorText({Map<String, String>? args}) {
    return hasError
        ? useContext().translateItem(error.value!, args: args)
        : null;
  }
}
