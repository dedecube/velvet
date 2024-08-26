import 'package:velvet_framework/data_loader/contracts/data_loader_error_builder_contract.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ConstructorDataLoaderErrorBuilder
    implements DataLoaderErrorBuilderContract {
  ConstructorDataLoaderErrorBuilder(this._factory);

  final DataLoaderErrorBuilder _factory;

  @override
  DataLoaderErrorBuilder get factory => _factory;
}
