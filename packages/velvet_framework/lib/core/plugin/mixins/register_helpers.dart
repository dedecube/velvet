import 'package:velvet_framework/core/config/contracts/velvet_config_manager_contract.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';
import 'package:velvet_framework/core/container.dart';

mixin RegisterHelpers {
  void registerConfig<T extends VelvetConfig>(
    T config,
  ) {
    container.get<VelvetConfigManagerContract>().register<T>(config);
  }
}
