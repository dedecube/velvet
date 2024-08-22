import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

class VelvetRoute extends GoRouteData with VelvetRoutePageBuilderMixin {
  const VelvetRoute();

  List<VelvetMiddleware> get middlewares => [];

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    if (middlewares.isEmpty) {
      return null;
    }

    return VelvetMiddlewarePipeline(middlewares).handle(context, state);
  }
}
