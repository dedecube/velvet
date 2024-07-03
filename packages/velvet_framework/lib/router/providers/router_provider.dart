import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/kernel/kernel.dart';
import 'package:velvet_framework/router/middleware/middleware_pipeline.dart';
import 'package:velvet_framework/router/providers/router_config_provider.dart';
import 'package:velvet_framework/router/providers/router_error_builder_provider.dart';
import 'package:velvet_framework/router/providers/routes_provider.dart';

part 'router_provider.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [routerConfig, routes, routerErrorBuilder],
)
Future<GoRouter> router(RouterRef ref) async {
  final routingConfig = ref.read(routerConfigProvider);
  final routes = ref.read(routesProvider);
  final routerErrorBuilder = ref.read(routerErrorBuilderProvider);

  return GoRouter(
    errorBuilder: routerErrorBuilder,
    initialLocation: routingConfig.initialPath,
    navigatorKey: Kernel.navigatorKey,
    redirect: MiddlewarePipeline(routingConfig.redirectMiddlewares).handle,
    routes: routes,
  );
}
