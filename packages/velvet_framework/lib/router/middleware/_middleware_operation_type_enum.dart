part of 'middleware_operation.dart';

/// An enumeration representing the types of operations that can be performed by middleware.
enum _MiddlewareOperationType {
  /// Represents a redirect operation, where the middleware redirects the request to a different route.
  redirect,

  /// Represents a next operation, where the middleware passes the request to the next middleware in the chain.
  next,
}
