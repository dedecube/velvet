import 'package:go_router/go_router.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

part 'routes_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
List<RouteBase> routes(RoutesRef ref) {
  return [];
}
