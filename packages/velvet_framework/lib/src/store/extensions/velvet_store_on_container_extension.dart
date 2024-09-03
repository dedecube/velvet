import 'package:velvet_framework/src/core/container/contracts/velvet_container_contract.dart';
import 'package:velvet_framework/src/store/contracts/velvet_store_contract.dart';

extension VelvetStoreOnContainerExtension on VelvetContainerContract {
  VelvetStoreContract store() => get<VelvetStoreContract>();
}
