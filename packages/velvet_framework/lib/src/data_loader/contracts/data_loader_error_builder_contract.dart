import 'package:flutter/material.dart';
import 'package:velvet_framework/src/contracts/factory_wrapper_contract.dart';

typedef DataLoaderErrorBuilder = Widget Function(
  Object error,
  StackTrace stackTrack,
);

abstract class DataLoaderErrorBuilderContract
    extends FactoryWrapperContract<DataLoaderErrorBuilder> {}
