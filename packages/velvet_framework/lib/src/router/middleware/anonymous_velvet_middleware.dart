import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/src/router/middleware/velvet_middleware.dart';

class AnonymousVelvetMiddleware extends VelvetMiddleware {
  AnonymousVelvetMiddleware(
    this.callback,
  );

  final MiddlewareCallback callback;

  @override
  Future<String?> handle(BuildContext context, GoRouterState state) async {
    return await callback(context, state);
  }
}
