import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/core/env/hooks/use_load_env_on_reassemble.dart';
import 'package:velvet_framework/core/event/hooks/use_event_listener.dart';
import 'package:velvet_framework/kernel/events/hide_loading_widget_event.dart';
import 'package:velvet_framework/kernel/widgets/kernel_app_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_error_debug_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_error_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';

class KernelWidget extends HookConsumerWidget {
  const KernelWidget({
    super.key,
    required this.appStartupProvider,
    this.loadingWidget,
    this.errorWidget,
  });

  final FutureProvider<void> appStartupProvider;
  final KernelErrorWidget? errorWidget;
  final KernelLoadingWidget? loadingWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    final sholdShowSplash = useState(true);

    useEventListener<HideLoadingWidgetEvent>(
      (event) => sholdShowSplash.value = false,
    );

    if (kDebugMode) {
      useLoadEnvOnReassemble();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Stack(
        children: [
          appStartupState.when(
            loading: () => const SizedBox(),
            error: (error, stackTrace) {
              if (kDebugMode) {
                return KernelErrorDebugWidget(
                  error: error,
                  stackTrace: stackTrace,
                );
              } else {
                return errorWidget ??
                    KernelErrorWidget(
                      onRetry: () => ref.refresh(appStartupProvider),
                    );
              }
            },
            data: (_) => const KernelAppWidget(),
          ),
          if (sholdShowSplash.value)
            loadingWidget ?? const KernelLoadingWidget(),
        ],
      ),
    );
  }
}
