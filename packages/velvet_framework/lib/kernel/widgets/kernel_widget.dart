import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/core/event/hooks/use_event_listener.dart';
import 'package:velvet_framework/kernel/events/hide_loading_widget_event.dart';
import 'package:velvet_framework/kernel/providers/kernel_provider.dart';
import 'package:velvet_framework/kernel/widgets/kernel_app_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_error_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';

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
    final appStartupState = ref.watch(kernelInitializationProvider);
    final sholdShowSplash = useState(true);

    useEventListener<HideLoadingWidgetEvent>(
      (event) => sholdShowSplash.value = false,
    );

    void onRetry() => ref.invalidate(kernelInitializationProvider);

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
