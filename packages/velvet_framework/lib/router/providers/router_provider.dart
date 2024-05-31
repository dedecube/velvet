import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/router/providers/router_config_provider.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [routerConfig])
GoRouter router(RouterRef ref) {
  throw UnimplementedError();
}
