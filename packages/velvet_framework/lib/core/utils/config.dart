import 'package:velvet_framework/core/config/contracts/velvet_config_manager_contract.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';
import 'package:velvet_framework/core/velvet_container.dart';

/// Get a config instance.
/// It is a shortcut for `container.get<VelvetConfigManagerContract>().get<T>()`.
/// It must be used with a type that extends [VelvetConfig], preferably a contract.
///
/// ```dart
/// final myConfig = config<MyConfigContract>();
/// ```
T config<T extends VelvetConfig>() {
  return container.get<VelvetConfigManagerContract>().get<T>();
}
