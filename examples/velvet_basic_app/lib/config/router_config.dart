import 'package:velvet_framework/velvet_framework.dart';

import 'package:velvet_basic_app/middlewares/example_middleware.dart';
import 'package:velvet_basic_app/routing/routes.dart';

class RouterConfig extends DefaultVelvetRouterConfig {
  @override
  String get initialPath => '/home';

  @override
  List<VelvetMiddleware> get globalMiddlewares => [
        ExampleMiddleware(),
      ];

  @override
  List<RouteBase> get routes => $routes.routes;
}
