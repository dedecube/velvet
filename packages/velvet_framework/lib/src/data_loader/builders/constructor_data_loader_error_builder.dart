import 'package:velvet_framework/src/data_loader/contracts/data_loader_error_builder_contract.dart';

class ConstructorDataLoaderErrorBuilder
    implements DataLoaderErrorBuilderContract {
  ConstructorDataLoaderErrorBuilder(this._factory);

  final DataLoaderErrorBuilder _factory;

  @override
  DataLoaderErrorBuilder get factory => _factory;
}
