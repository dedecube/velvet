import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/contracts/middleware_contract.dart';
import 'package:velvet_framework/router/middleware/middleware_operation.dart';

/// A pipeline for executing a series of middlewares in a specific order.
/// Middlewares are functions that can be executed before handling a route.
class MiddlewarePipeline {
  MiddlewarePipeline(List<MiddlewareContract> middlewares)
      : _middlewares = middlewares;

  final List<MiddlewareContract> _middlewares;

  /// Handles the middleware pipeline for a given [context] and [state].
  /// Returns the route to redirect to, if any.
  Future<String?> handle(
    BuildContext context,
    GoRouterState state,
  ) async {
    var operation = await _handle(context, state);

    if (operation.shouldRedirect) {
      return operation.redirectTo!;
    }

    return null;
  }

  /// Executes the middleware pipeline for a given [context] and [state].
  /// Returns the [MiddlewareOperation] indicating the next action to take.
  Future<MiddlewareOperation> _handle(
    BuildContext context,
    GoRouterState state,
  ) async {
    for (var middleware in _middlewares) {
      var operation = await middleware.handle(context, state, () async {
        return MiddlewareOperation.next();
      });

      if (operation.shouldRedirect) {
        return operation;
      }
    }

    return MiddlewareOperation.next();
  }
}
