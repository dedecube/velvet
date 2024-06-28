import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/kernel/providers/kernel_bootstrap_provider.dart';
import 'package:velvet_framework/router/providers/router_provider.dart';
import 'package:velvet_framework/store/providers/store_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';

part 'kernel_provider.g.dart';

/// The kernel provider is the responsible for initializing the application and its dependencies.
/// It is responsible for initializing the application and its dependencies.
/// Internally, it initializes the store, the router, the translator, and the kernel bootstrap providers.
///
/// See https://codewithandrea.com/articles/robust-app-initialization-riverpod/
@Riverpod(
  keepAlive: true,
  dependencies: [store, router, translator, kernelBootstrap],
)
Future<void> kernel(KernelRef ref) async {
  ref.onDispose(() {
    ref.invalidate(routerProvider);
    ref.invalidate(translatorProvider);
    ref.invalidate(kernelBootstrapProvider);
  });

  ref.read(routerProvider);
  ref.read(translatorProvider);

  await ref.watch(storeProvider.future);
  await ref.watch(kernelBootstrapProvider.future);
}
