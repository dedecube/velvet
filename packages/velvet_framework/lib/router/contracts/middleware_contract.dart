import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/middleware/middleware_operation.dart';

/// A contract for defining routing middleware.
///
/// Middleware is a mechanism for intercepting and modifying the behavior of
/// the routing process. It allows developers to perform additional operations
/// before or after a route is navigated to.
abstract class MiddlewareContract {
  /// Handles the middleware operation.
  ///
  /// This method is called when a route is being navigated to. It receives the
  /// [context] of the current route, the [state] of the router, and a [next]
  /// function that represents the next middleware in the chain.
  ///
  /// The method should return a [Future] that resolves to a [MiddlewareOperation]
  /// indicating the desired behavior of the middleware.
  Future<MiddlewareOperation> handle(
    BuildContext context,
    GoRouterState state,
    Next next,
  );
}

/// A function type representing the next middleware in the chain.
///
/// The [Next] function is used to invoke the next middleware in the chain.
/// It returns a [Future] that resolves to a [MiddlewareOperation].
typedef Next = Future<MiddlewareOperation> Function();
