import 'package:velvet_framework/translation/extensions/translator_extension.dart';
import 'package:velvet_framework/utils/kernel_context.dart';

translate(String key, {Map<String, String>? args}) {
  return kernelContext().translate(key, args: args);
}
