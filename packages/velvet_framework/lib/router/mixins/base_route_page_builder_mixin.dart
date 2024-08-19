import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/enums/router_page_transition_enum.dart';
import 'package:velvet_framework/router/providers/router_config_provider.dart';
import 'package:velvet_framework/utils/container.dart';

mixin BaseRoutePageBuilderMixin on GoRouteData {
  /// The page transition to be used.
  RouterPageTransitionEnum? get pageTransition => null;

  /// Resolve the page transition to be used.
  /// If the page transition is not set, it will use
  /// the default page transition from the router config.
  resolveWithPageTransition() {
    if (pageTransition != null) {
      return pageTransition;
    }

    return riverpodContainer().read(routerConfigProvider).defaultPageTransition;
  }

  @override
  Page buildPage(BuildContext context, GoRouterState state) {
    var transition = resolveWithPageTransition();

    if (transition == RouterPageTransitionEnum.none) {
      return NoTransitionPage(
        child: build(context, state),
      );
    }

    if (transition == RouterPageTransitionEnum.fade) {
      return CustomTransitionPage(
        child: build(context, state),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
      );
    }

    return super.buildPage(context, state);
  }
}
