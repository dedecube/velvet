import 'package:go_router/go_router.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/utils/config.dart';
import 'package:velvet_framework/src/core/utils/navigator_key.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/router/contracts/velvet_router_config_contract.dart';
import 'package:velvet_framework/src/router/contracts/velvet_router_contract.dart';
import 'package:velvet_framework/src/router/middleware/velvet_middleware_pipeline.dart';
import 'package:velvet_framework/src/router/observers/hide_loading_widget_observer.dart';

class RouterPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerLazySingleton<VelvetRouterContract>(() {
      final routingConfig = config<VelvetRouterConfigContract>();

      return GoRouter(
        errorBuilder: routingConfig.routerErrorBuilder,
        initialLocation: routingConfig.initialPath,
        navigatorKey: navigatorKey(),
        redirect:
            VelvetMiddlewarePipeline(routingConfig.globalMiddlewares).handle,
        routes: routingConfig.routes,
        observers: [
          HideLoadingWidgetObserver(),
        ],
      );
    });
  }

  @override
  void boot() {
    container.requireRegistrationOf<VelvetRouterConfigContract>();
  }
}
