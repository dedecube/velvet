import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/contracts/middleware_contract.dart';
import 'package:velvet_framework/router/contracts/router_config_contract.dart';
import 'package:velvet_framework/router/enums/router_page_transition_enum.dart';

class DefaultRouterConfig extends RouterConfigContract {
  @override
  String get initialPath => '/';

  @override
  RouterPageTransitionEnum get defaultPageTransition =>
      RouterPageTransitionEnum.material;

  @override
  List<MiddlewareContract> get redirectMiddlewares => [];

  @override
  List<RouteBase> get routes => [];
}
