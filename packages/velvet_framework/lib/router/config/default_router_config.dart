import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/contracts/router_config_contract.dart';
import 'package:velvet_framework/router/enums/router_page_transition_enum.dart';
import 'package:velvet_framework/router/middleware/velvet_middleware.dart';

class DefaultRouterConfig extends RouterConfigContract {
  @override
  String get initialPath => '/';

  @override
  RouterPageTransitionEnum get defaultPageTransition =>
      RouterPageTransitionEnum.material;

  @override
  List<VelvetMiddleware> get globalMiddlewares => [];

  @override
  List<RouteBase> get routes => [];
}
