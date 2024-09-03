import 'package:velvet_framework/src/store/contracts/velvet_store_simple_adapter_contract.dart';

/// Store contract
///
/// Can be accessed by [storeProvider] to get the store instance
abstract class VelvetStoreContract {
  VelvetStoreSimpleAdapterContract get simple;
}
