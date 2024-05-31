import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/kernel/providers/kernel_provider.dart';
import 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';
import 'package:velvet_framework/kernel/widgets/kerner_app_widget.dart';
import 'package:velvet_framework/kernel/widgets/kerner_error_widget.dart';

class KernelWidget extends HookConsumerWidget {
  const KernelWidget({
    super.key,
    this.loadingWidget,
    this.errorWidget,
  });

  /// This key is used to get the context of the KernelWidget
  /// It, combined with the [ProviderContainer], will be used to read providers
  ///
  /// ```dart
  /// ProviderScope
  ///   .containerOf(KernelWidget.resolutionKey.currentContext!)
  ///   .read(...);
  /// ```
  static final resolutionKey = GlobalKey();

  final KernelErrorWidget? errorWidget;
  final KernelLoadingWidget? loadingWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(kernelProvider);

    onRetry() => ref.invalidate(kernelProvider);

    return appStartupState.when(
      loading: () => loadingWidget ?? const KernelLoadingWidget(),
      error: (error, stackTrace) =>
          errorWidget ??
          KernelErrorWidget(
            onRetry: onRetry,
            error: error,
            stackTrace: stackTrace,
          ),
      data: (_) => const KernelAppWidget(),
    );
  }
}
