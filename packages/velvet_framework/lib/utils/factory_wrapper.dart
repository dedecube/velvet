import 'package:velvet_framework/contracts/factory_wrapper_contract.dart';

class FactoryWrapper<T extends Function> extends FactoryWrapperContract<T> {
  FactoryWrapper({
    required T builder,
  }) : _builder = builder;

  final T _builder;

  @override
  T get factory => _builder;
}
