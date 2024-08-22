import 'package:go_router/go_router.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';
import 'package:velvet_framework/router/enums/router_page_transition_enum.dart';
import 'package:velvet_framework/router/middleware/velvet_middleware.dart';

/// A contract defining the configuration for the router.
abstract class RouterConfigContract extends VelvetConfig {
  /// The initial path to be displayed when the app starts.
  String get initialPath;

  /// The default page transition to be used when navigating between pages.
  RouterPageTransitionEnum get defaultPageTransition;

  /// The list of middlewares to be used by the router redirect.
  List<VelvetMiddleware> get globalMiddlewares;

  List<RouteBase> get routes;
}
