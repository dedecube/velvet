import 'dart:async';

import 'package:velvet_framework/velvet_framework.dart';

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
