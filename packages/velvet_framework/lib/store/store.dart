import 'package:velvet_framework/store/contracts/store_contract.dart';
import 'package:velvet_framework/store/contracts/store_simple_adapter_contract.dart';

/// This is the store of the application.
class Store implements StoreContract {
  Store(this._simple);

  final StoreSimpleAdapterContract _simple;

  @override
  StoreSimpleAdapterContract get simple => _simple;
}
