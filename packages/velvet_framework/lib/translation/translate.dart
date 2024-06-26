import 'package:velvet_framework/utils/kernel_context.dart';
import 'package:velvet_framework/velvet_framework.dart';

translate(String key, {Map<String, String>? args}) {
  return kernelContext().translate(key, args: args);
}
