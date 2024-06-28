part '_middleware_operation_type_enum.dart';

/// Represents an operation that can be performed by middleware in the framework's router.
class MiddlewareOperation {
  /// Creates a [MiddlewareOperation] that indicates to proceed to the next middleware.
  MiddlewareOperation.next()
      : _redirectTo = null,
        _type = _MiddlewareOperationType.next;

  /// Creates a [MiddlewareOperation] that indicates to redirect to a specific route.
  ///
  /// The [route] parameter specifies the route to redirect to.
  MiddlewareOperation.redirect(String route)
      : _redirectTo = route,
        _type = _MiddlewareOperationType.redirect;

  final String? _redirectTo;
  final _MiddlewareOperationType _type;

  /// Returns `true` if this operation indicates a redirect.
  bool get shouldRedirect => _type == _MiddlewareOperationType.redirect;

  /// Returns the route to redirect to, or `null` if this operation does not indicate a redirect.
  String? get redirectTo => _redirectTo;

  /// Returns `true` if this operation indicates to proceed to the next middleware.
  bool get shouldGoNext => _type == _MiddlewareOperationType.next;
}
