import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/core/utils/navigator_key.dart';
import 'package:velvet_framework/core/velvet_container.dart';
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
  dependencies: [store, router, translator],
)
Future<void> kernelInitialization(KernelInitializationRef ref) async {
  ref.onDispose(() {
    ref.invalidate(routerProvider);
    ref.invalidate(translatorProvider);
  });

  final router = await ref.watch(routerProvider.future);

  if (router.configuration.navigatorKey != navigatorKey()) {
    throw Exception('Navigator key must be the same as Kernel.navigatorKey.');
  }

  ref.read(translatorProvider);

  await ref.watch(storeProvider.future);

  container.get<VelvetPluginManagerContract>().runBoot();
}
