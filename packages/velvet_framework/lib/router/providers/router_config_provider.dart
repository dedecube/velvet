import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/router/contracts/router_config_contract.dart';

part 'router_config_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
RouterConfigContract routerConfig(RouterConfigRef ref) {
  throw UnimplementedError();
}
