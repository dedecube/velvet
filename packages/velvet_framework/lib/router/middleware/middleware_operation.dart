part '_middleware_operation_type_enum.dart';

class MiddlewareOperation {
  MiddlewareOperation.next()
      : _redirectTo = null,
        _type = _MiddlewareOperationType.next;

  MiddlewareOperation.redirect(String route)
      : _redirectTo = route,
        _type = _MiddlewareOperationType.redirect;

  final String? _redirectTo;
  final _MiddlewareOperationType _type;

  bool get shouldRedirect => _type == _MiddlewareOperationType.redirect;

  String? get redirectTo => _redirectTo;

  bool get shouldGoNext => _type == _MiddlewareOperationType.next;
}
