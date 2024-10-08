import 'package:flutter/material.dart';
import 'package:velvet_framework/src/contracts/factory_wrapper_contract.dart';

typedef DataLoaderLoadingBuilder = Widget Function();

abstract class DataLoaderLoadingBuilderContract
    extends FactoryWrapperContract<DataLoaderLoadingBuilder> {}
