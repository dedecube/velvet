import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/middleware/velvet_middleware.dart';

/// A pipeline for executing a series of middlewares in a specific order.
/// Middlewares are functions that can be executed before handling a route.
class VelvetMiddlewarePipeline {
  VelvetMiddlewarePipeline(List<VelvetMiddleware> middlewares)
      : _middlewares = middlewares;

  final List<VelvetMiddleware> _middlewares;

  /// Handles the middleware pipeline for a given [context] and [state].
  /// Returns the route to redirect to, if any.
  Future<String?> handle(
    BuildContext context,
    GoRouterState state,
  ) async {
    for (final middleware in _middlewares) {
      var operation = await middleware.handle(context, state);

      if (operation != null) {
        return operation;
      }
    }

    return null;
  }
}
