import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/utils.dart';
import 'package:velvet_framework/kernel/kernel.dart';
import 'package:velvet_framework/router/contracts/router_config_contract.dart';
import 'package:velvet_framework/router/middleware/middleware_pipeline.dart';
import 'package:velvet_framework/router/observers/hide_loading_widget_observer.dart';
import 'package:velvet_framework/router/providers/router_error_builder_provider.dart';
import 'package:velvet_framework/router/providers/routes_provider.dart';
import 'package:velvet_framework/talker/talker_global_instance.dart';

part 'router_provider.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [routerErrorBuilder],
)
Future<GoRouter> router(RouterRef ref) async {
  final routingConfig = config<RouterConfigContract>();
  final routerErrorBuilder = ref.read(routerErrorBuilderProvider);

  return GoRouter(
    errorBuilder: routerErrorBuilder,
    initialLocation: routingConfig.initialPath,
    navigatorKey: Kernel.navigatorKey,
    redirect: MiddlewarePipeline(routingConfig.redirectMiddlewares).handle,
    routes: routingConfig.routes,
    observers: [
      TalkerRouteObserver(talkerGlobalInstance),
      HideLoadingWidgetObserver(),
    ],
  );
}
