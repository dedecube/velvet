import 'package:velvet_framework/src/core/container/contracts/velvet_container_contract.dart';
import 'package:velvet_framework/src/data_loader/contracts/data_loader_error_builder_contract.dart';
import 'package:velvet_framework/src/data_loader/contracts/data_loader_loading_builder_contract.dart';

extension DataLoaderOnContainerExtension on VelvetContainerContract {
  DataLoaderLoadingBuilderContract dataLoaderLoadingBuilder() =>
      get<DataLoaderLoadingBuilderContract>();

  DataLoaderErrorBuilderContract dataLoaderErrorBuilder() =>
      get<DataLoaderErrorBuilderContract>();
}
