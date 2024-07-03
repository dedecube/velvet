import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ExampleMiddleware extends MiddlewareContract {
  @override
  Future<MiddlewareOperation> handle(
    BuildContext context,
    GoRouterState state,
    Next next,
  ) async {
    talkerGlobalInstance.info('Hello from ExampleMiddleware.');

    return MiddlewareOperation.next();
  }
}
