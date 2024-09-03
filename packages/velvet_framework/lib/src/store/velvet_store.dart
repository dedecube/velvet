import 'package:velvet_framework/src/store/contracts/velvet_store_contract.dart';
import 'package:velvet_framework/src/store/contracts/velvet_store_simple_adapter_contract.dart';

/// This is the store of the application.
class VelvetStore implements VelvetStoreContract {
  VelvetStore(this._simple);

  final VelvetStoreSimpleAdapterContract _simple;

  @override
  VelvetStoreSimpleAdapterContract get simple => _simple;
}
