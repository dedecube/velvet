import 'package:flutter/material.dart';
import 'package:velvet_framework/data_loader/contracts/data_loader_loading_builder_contract.dart';

class DefaultDataLoaderLoadingBuilder extends DataLoaderLoadingBuilderContract {
  @override
  DataLoaderLoadingBuilder get factory {
    return () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    };
  }
}
