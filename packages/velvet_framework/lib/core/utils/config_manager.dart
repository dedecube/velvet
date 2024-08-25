import 'package:velvet_framework/core/config/contracts/velvet_config_manager_contract.dart';
import 'package:velvet_framework/core/velvet_container.dart';

VelvetConfigManagerContract configManager() {
  return container.get<VelvetConfigManagerContract>();
}
