import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:velvet_framework/src/router/middleware/velvet_middleware.dart';
import 'package:velvet_framework/src/router/middleware/velvet_middleware_pipeline.dart';
import 'package:velvet_framework/src/router/mixins/velvet_route_page_builder_mixin.dart';

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
