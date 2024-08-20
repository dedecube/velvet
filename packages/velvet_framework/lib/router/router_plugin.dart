import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/router/config/default_router_config.dart';
import 'package:velvet_framework/router/contracts/router_config_contract.dart';

class RouterPlugin extends VelvetPlugin {
  @override
  void register() {
    registerConfig<RouterConfigContract>(DefaultRouterConfig());
  }
}
