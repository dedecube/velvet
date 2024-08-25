import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ExampleMiddleware extends VelvetMiddleware {
  @override
  Future<String?> handle(
    BuildContext context,
    GoRouterState state,
  ) async {
    logger().info('Hello from ExampleMiddleware.');

    return null;
  }
}
