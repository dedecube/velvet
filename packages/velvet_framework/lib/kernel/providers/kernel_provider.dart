import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/event/providers/event_bus_provider.dart';
import 'package:velvet_framework/kernel/kernel.dart';
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
  dependencies: [store, router, translator, kernelBootstrap, eventBus],
)
Future<void> kernel(KernelRef ref) async {
  ref.onDispose(() {
    ref.invalidate(routerProvider);
    ref.invalidate(translatorProvider);
    ref.invalidate(kernelBootstrapProvider);
  });

  final router = await ref.watch(routerProvider.future);

  if (router.configuration.navigatorKey != Kernel.navigatorKey) {
    throw Exception('Navigator key must be the same as Kernel.navigatorKey.');
  }

  ref.read(translatorProvider);
  ref.read(eventBusProvider);

  await ref.watch(storeProvider.future);
  await ref.watch(kernelBootstrapProvider.future);
}
