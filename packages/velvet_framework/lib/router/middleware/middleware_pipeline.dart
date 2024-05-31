import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/contracts/middleware_contract.dart';
import 'package:velvet_framework/router/middleware/middleware_operation.dart';

class MiddlewarePipeline {
  MiddlewarePipeline(List<MiddlewareContract> middlewares)
      : _middlewares = middlewares;

  final List<MiddlewareContract> _middlewares;

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
