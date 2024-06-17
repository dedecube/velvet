import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
Future<GoRouter> router(RouterRef ref) async {
  throw UnimplementedError();
}
