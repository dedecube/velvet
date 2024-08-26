import 'package:velvet_framework/core/container/contracts/velvet_container_contract.dart';
import 'package:velvet_framework/store/contracts/store_contract.dart';

extension StoreOnContainerExtension on VelvetContainerContract {
  StoreContract store() => get<StoreContract>();
}
