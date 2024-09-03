import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/src/core/config/velvet_config.dart';
import 'package:velvet_framework/src/router/enums/router_page_transition_enum.dart';
import 'package:velvet_framework/src/router/middleware/velvet_middleware.dart';

/// A contract defining the configuration for the router.
abstract class VelvetRouterConfigContract extends VelvetConfig {
  /// The initial path to be displayed when the app starts.
  String get initialPath;

  /// The default page transition to be used when navigating between pages.
  RouterPageTransitionEnum get defaultPageTransition;

  /// The list of middlewares to be used by the router redirect.
  List<VelvetMiddleware> get globalMiddlewares;

  /// The list of routes to be used by the router.
  List<RouteBase> get routes;

  /// The builder to be used when an error occurs in the router.
  Widget Function(BuildContext context, GoRouterState state)?
      get routerErrorBuilder;
}
