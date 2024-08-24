import 'package:velvet_framework/core/config/contracts/velvet_config_manager_contract.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/utils/callback_manager.dart';

class VelvetConfigManager implements VelvetConfigManagerContract {
  final Map<Type, VelvetConfig> _configs = {};

  final _refreshCallbacks = CallbackManager();

  @override
  T register<T extends VelvetConfig>(T config) {
    _refreshCallbacks.add(() {
      container.registerSingleton<T>(config);
    });

    return container.registerSingleton<T>(config);
  }

  @override
  T get<T extends VelvetConfig>() {
    return container.get<T>();
  }

  @override
  List<VelvetConfig> all() {
    return _configs.values.toList();
  }

  @override
  void refresh() {
    _configs.clear();
    _refreshCallbacks.call();
  }
}
