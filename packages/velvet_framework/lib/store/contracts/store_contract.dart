import 'package:velvet_framework/store/contracts/store_simple_adapter_contract.dart';

/// Store contract
///
/// Can be accessed by [storeProvider] to get the store instance
abstract class StoreContract {
  StoreSimpleAdapterContract get simple;
}
