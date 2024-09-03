import 'package:velvet_framework/src/data_loader/contracts/data_loader_loading_builder_contract.dart';

class ConstructorDataLoaderLoadingBuilder
    implements DataLoaderLoadingBuilderContract {
  ConstructorDataLoaderLoadingBuilder(this._factory);

  final DataLoaderLoadingBuilder _factory;

  @override
  DataLoaderLoadingBuilder get factory => _factory;
}
