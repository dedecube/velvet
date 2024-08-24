import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/container/contracts/velvet_container_contract.dart';

mixin ProxyToGetItMixin on VelvetContainerContract {
  @protected
  final GetIt getIt = GetIt.asNewInstance();

  @override
  Future<void> allReady({
    Duration? timeout,
    bool ignorePendingAsyncCreation = false,
  }) {
    return getIt.allReady(
      timeout: timeout,
      ignorePendingAsyncCreation: ignorePendingAsyncCreation,
    );
  }

  @override
  bool allReadySync([bool ignorePendingAsyncCreation = false]) {
    return getIt.allReadySync(ignorePendingAsyncCreation);
  }

  @override
  T call<T extends Object>({String? instanceName, param1, param2, Type? type}) {
    return getIt.call<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
      type: type,
    );
  }

  @override
  String? get currentScopeName => getIt.currentScopeName;

  @override
  Future<void> dropScope(String scopeName) {
    return getIt.dropScope(scopeName);
  }

  @override
  void enableRegisteringMultipleInstancesOfOneType() {
    getIt.enableRegisteringMultipleInstancesOfOneType();
  }

  @override
  T get<T extends Object>({param1, param2, String? instanceName, Type? type}) {
    return getIt.get<T>(
      param1: param1,
      param2: param2,
      instanceName: instanceName,
      type: type,
    );
  }

  @override
  Iterable<T> getAll<T extends Object>({param1, param2, Type? type}) {
    return getIt.getAll<T>(param1: param1, param2: param2, type: type);
  }

  @override
  Future<Iterable<T>> getAllAsync<T extends Object>({
    param1,
    param2,
    Type? type,
  }) {
    return getIt.getAllAsync<T>(param1: param1, param2: param2, type: type);
  }

  @override
  Future<T> getAsync<T extends Object>({
    String? instanceName,
    param1,
    param2,
    Type? type,
  }) {
    return getIt.getAsync<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
      type: type,
    );
  }

  @override
  bool hasScope(String scopeName) {
    return getIt.hasScope(scopeName);
  }

  @override
  Future<void> isReady<T extends Object>({
    Object? instance,
    String? instanceName,
    Duration? timeout,
    Object? callee,
  }) {
    return getIt.isReady<T>(
      instance: instance,
      instanceName: instanceName,
      timeout: timeout,
      callee: callee,
    );
  }

  @override
  bool isReadySync<T extends Object>({Object? instance, String? instanceName}) {
    return getIt.isReadySync<T>(
      instance: instance,
      instanceName: instanceName,
    );
  }

  @override
  bool isRegistered<T extends Object>({
    Object? instance,
    String? instanceName,
  }) {
    return getIt.isRegistered<T>(
      instance: instance,
      instanceName: instanceName,
    );
  }

  @override
  Future<void> popScope() {
    return getIt.popScope();
  }

  @override
  Future<bool> popScopesTill(String name, {bool inclusive = true}) {
    return getIt.popScopesTill(name, inclusive: inclusive);
  }

  @override
  void pushNewScope({
    void Function(GetIt getIt)? init,
    String? scopeName,
    ScopeDisposeFunc? dispose,
    bool isFinal = false,
  }) {
    getIt.pushNewScope(
      init: init,
      scopeName: scopeName,
      dispose: dispose,
      isFinal: isFinal,
    );
  }

  @override
  Future<void> pushNewScopeAsync({
    Future<void> Function(GetIt getIt)? init,
    String? scopeName,
    ScopeDisposeFunc? dispose,
  }) {
    return getIt.pushNewScopeAsync(
      init: init,
      scopeName: scopeName,
      dispose: dispose,
    );
  }

  @override
  void registerFactory<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
  }) {
    getIt.registerFactory<T>(factoryFunc, instanceName: instanceName);
  }

  @override
  void registerFactoryAsync<T extends Object>(
    FactoryFuncAsync<T> factoryFunc, {
    String? instanceName,
  }) {
    getIt.registerFactoryAsync<T>(factoryFunc, instanceName: instanceName);
  }

  @override
  void registerFactoryParam<T extends Object, P1, P2>(
    FactoryFuncParam<T, P1, P2> factoryFunc, {
    String? instanceName,
  }) {
    getIt.registerFactoryParam<T, P1, P2>(
      factoryFunc,
      instanceName: instanceName,
    );
  }

  @override
  void registerFactoryParamAsync<T extends Object, P1, P2>(
    FactoryFuncParamAsync<T, P1?, P2?> factoryFunc, {
    String? instanceName,
  }) {
    getIt.registerFactoryParamAsync<T, P1, P2>(
      factoryFunc,
      instanceName: instanceName,
    );
  }

  @override
  void registerLazySingleton<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
    DisposingFunc<T>? dispose,
  }) {
    getIt.registerLazySingleton<T>(
      factoryFunc,
      instanceName: instanceName,
      dispose: dispose,
    );
  }

  @override
  void registerLazySingletonAsync<T extends Object>(
    FactoryFuncAsync<T> factoryFunc, {
    String? instanceName,
    DisposingFunc<T>? dispose,
  }) {
    getIt.registerLazySingletonAsync<T>(
      factoryFunc,
      instanceName: instanceName,
      dispose: dispose,
    );
  }

  @override
  T registerSingleton<T extends Object>(
    T instance, {
    String? instanceName,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    return getIt.registerSingleton<T>(
      instance,
      instanceName: instanceName,
      signalsReady: signalsReady,
      dispose: dispose,
    );
  }

  @override
  void registerSingletonAsync<T extends Object>(
    FactoryFuncAsync<T> factoryFunc, {
    String? instanceName,
    Iterable<Type>? dependsOn,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    getIt.registerSingletonAsync<T>(
      factoryFunc,
      instanceName: instanceName,
      dependsOn: dependsOn,
      signalsReady: signalsReady,
      dispose: dispose,
    );
  }

  @override
  void registerSingletonWithDependencies<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
    Iterable<Type>? dependsOn,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    getIt.registerSingletonWithDependencies<T>(
      factoryFunc,
      instanceName: instanceName,
      dependsOn: dependsOn,
      signalsReady: signalsReady,
      dispose: dispose,
    );
  }

  @override
  Future<void> reset({bool dispose = true}) {
    return getIt.reset(dispose: dispose);
  }

  @override
  FutureOr resetLazySingleton<T extends Object>({
    T? instance,
    String? instanceName,
    FutureOr Function(T p1)? disposingFunction,
  }) {
    return getIt.resetLazySingleton<T>(
      instance: instance,
      instanceName: instanceName,
      disposingFunction: disposingFunction,
    );
  }

  @override
  Future<void> resetScope({bool dispose = true}) {
    return getIt.resetScope(dispose: dispose);
  }

  @override
  void signalReady(Object? instance) {
    getIt.signalReady(instance);
  }

  @override
  FutureOr unregister<T extends Object>({
    Object? instance,
    String? instanceName,
    FutureOr Function(T p1)? disposingFunction,
  }) {
    return getIt.unregister<T>(
      instance: instance,
      instanceName: instanceName,
      disposingFunction: disposingFunction,
    );
  }

  @override
  // ignore: boolean_prefixes
  bool get allowReassignment => getIt.allowReassignment;

  @override
  // ignore: boolean_prefixes
  bool get allowRegisterMultipleImplementationsOfoneType =>
      getIt.allowReassignment;

  @override
  void Function(bool pushed)? get onScopeChanged => getIt.onScopeChanged;

  @override
  // ignore: boolean_prefixes
  bool get skipDoubleRegistration => getIt.allowReassignment;

  @override
  set allowReassignment(bool allowReassignment) {
    getIt.allowReassignment = allowReassignment;
  }

  @override
  set allowRegisterMultipleImplementationsOfoneType(
    bool allowRegisterMultipleImplementationsOfoneType,
  ) {
    // ignore: invalid_use_of_visible_for_testing_member
    getIt.allowRegisterMultipleImplementationsOfoneType =
        allowRegisterMultipleImplementationsOfoneType;
  }

  @override
  set onScopeChanged(void Function(bool pushed)? onScopeChanged) {
    getIt.onScopeChanged = onScopeChanged;
  }

  @override
  set skipDoubleRegistration(bool skipDoubleRegistration) {
    // ignore: invalid_use_of_visible_for_testing_member
    getIt.skipDoubleRegistration = skipDoubleRegistration;
  }
}
