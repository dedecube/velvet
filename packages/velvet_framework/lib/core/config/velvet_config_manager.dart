import 'package:velvet_framework/core/config/contracts/velvet_config_manager_contract.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';
import 'package:velvet_framework/core/container.dart';

class VelvetConfigManager implements VelvetConfigManagerContract {
  @override
  T register<T extends VelvetConfig>(T config) {
    return container.registerSingleton<T>(config);
  }

  @override
  T get<T extends VelvetConfig>() {
    return container.get<T>();
  }
}
