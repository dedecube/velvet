import 'package:velvet_framework/velvet_framework.dart';

class ConstructorDataLoaderLoadingBuilder
    implements DataLoaderLoadingBuilderContract {
  ConstructorDataLoaderLoadingBuilder(this._factory);

  final DataLoaderLoadingBuilder _factory;

  @override
  DataLoaderLoadingBuilder get factory => _factory;
}
