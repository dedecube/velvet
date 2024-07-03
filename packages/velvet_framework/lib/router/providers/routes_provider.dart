import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
List<RouteBase> routes(RoutesRef ref) {
  return [];
}
