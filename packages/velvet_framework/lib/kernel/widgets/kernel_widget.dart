import 'package:flutter/material.dart';
import 'package:velvet_framework/kernel/events/hide_loading_widget_event.dart';
import 'package:velvet_framework/velvet_framework.dart';

class KernelWidget extends HookConsumerWidget {
  const KernelWidget({
    super.key,
    this.loadingWidget,
    this.errorWidget,
  });

  final KernelErrorWidget? errorWidget;
  final KernelLoadingWidget? loadingWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(kernelProvider);
    final sholdShowSplash = useState(true);

    useEventListener<HideLoadingWidgetEvent>(
      (event) => sholdShowSplash.value = false,
    );

    onRetry() => ref.invalidate(kernelProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Stack(
        children: [
          appStartupState.when(
            loading: () => const SizedBox(),
            error: (error, stackTrace) =>
                errorWidget ??
                KernelErrorWidget(
                  onRetry: onRetry,
                  error: error,
                  stackTrace: stackTrace,
                ),
            data: (_) => const KernelAppWidget(),
          ),
          if (sholdShowSplash.value)
            loadingWidget ?? const KernelLoadingWidget(),
        ],
      ),
    );
  }
}
