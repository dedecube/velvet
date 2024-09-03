import 'dart:async';

import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/data_loader/builders/default_data_loader_error_builder.dart';
import 'package:velvet_framework/src/data_loader/builders/default_data_loader_loading_builder.dart';
import 'package:velvet_framework/src/data_loader/contracts/data_loader_error_builder_contract.dart';
import 'package:velvet_framework/src/data_loader/contracts/data_loader_loading_builder_contract.dart';

class DataLoaderPlugin extends VelvetPlugin {
  @override
  FutureOr<void> register() {
    _registerLoadingBuilder();
    _registerErrorBuilder();
  }

  void _registerErrorBuilder() {
    container.registerLazySingleton<DataLoaderErrorBuilderContract>(
      () => DefaultDataLoaderErrorBuilder(),
    );
  }

  void _registerLoadingBuilder() {
    container.registerLazySingleton<DataLoaderLoadingBuilderContract>(
      () => DefaultDataLoaderLoadingBuilder(),
    );
  }
}
