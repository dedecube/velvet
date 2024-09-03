import 'package:velvet_framework/src/translation/extensions/translator_extension.dart';
import 'package:velvet_framework/src/utils/kernel_context.dart';

String translate(String key, {Map<String, String>? args}) {
  return kernelContext().translate(key, args: args);
}
