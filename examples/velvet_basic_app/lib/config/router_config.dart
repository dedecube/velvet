import 'package:velvet_basic_app/middlewares/example_middleware.dart';
import 'package:velvet_basic_app/routing/routes.dart';
import 'package:velvet_framework/velvet_framework.dart';

class RouterConfig extends DefaultRouterConfig {
  @override
  String get initialPath => '/home';

  @override
  List<MiddlewareContract> get redirectMiddlewares => [
        ExampleMiddleware(),
      ];

  @override
  List<RouteBase> get routes => $routes.routes;
}
