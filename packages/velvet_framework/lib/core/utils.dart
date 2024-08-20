import 'package:velvet_framework/core/config/contracts/velvet_config_manager_contract.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';
import 'package:velvet_framework/core/container.dart';

T config<T extends VelvetConfig>() {
  return container.get<VelvetConfigManagerContract>().get<T>();
}
