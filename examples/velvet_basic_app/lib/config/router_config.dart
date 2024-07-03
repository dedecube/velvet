import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_basic_app/middlewares/example_middleware.dart';
import 'package:velvet_framework/velvet_framework.dart';

@VelvetConfig(provider: routerConfig)
class RouterConfig extends RouterConfigContract {
  @override
  List<MiddlewareContract> get redirectMiddlewares => [
        ExampleMiddleware(),
      ];
}
