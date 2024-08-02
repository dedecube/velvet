import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

class BaseRoute extends GoRouteData with BaseRoutePageBuilderMixin {
  const BaseRoute();

  List<MiddlewareContract> get middlewares => [];

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    if (middlewares.isEmpty) {
      return null;
    }

    return MiddlewarePipeline(middlewares).handle(context, state);
  }
}
