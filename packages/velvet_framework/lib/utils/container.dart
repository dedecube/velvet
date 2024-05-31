import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/kernel/widgets/kernel_widget.dart';

ProviderContainer container() {
  return ProviderScope.containerOf(KernelWidget.resolutionKey.currentContext!);
}
