import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_framework/router/middleware/middleware_operation.dart';

abstract class MiddlewareContract {
  Future<MiddlewareOperation> handle(
    BuildContext context,
    GoRouterState state,
    Next next,
  );
}

typedef Next = Future<MiddlewareOperation> Function();
