import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/utils/kernel_context.dart';

ProviderContainer container() {
  return ProviderScope.containerOf(kernelContext());
}
