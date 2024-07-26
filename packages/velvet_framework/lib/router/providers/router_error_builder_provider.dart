import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

part 'router_error_builder_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
Widget Function(BuildContext context, GoRouterState state)? routerErrorBuilder(
  RouterErrorBuilderRef ref,
) {
  return null;
}
