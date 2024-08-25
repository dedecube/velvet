import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/kernel/exceptions/kernel_is_already_running_exception.dart';

mixin SetupRiverpodMixin on KernelContract {
  /// A bag of Riverpod's [ProviderObserver] that will be used by the [ProviderScope]
  final List<ProviderObserver> _riverpodObservers = [];

  /// A bag of Riverpod's [Override] that will be used to override the original providers
  final List<Override> _riverpodOvverides = [];

  static ProviderContainer? _riverpodContainer;

  @override
  ProviderContainer? get riverpodContainer => _riverpodContainer;

  /// Add a new observer to the list of observers
  /// that will be used by the [ProviderScope]
  ///
  /// Coupled with Riverpod's [ProviderObserver]
  ///
  /// ```dart
  /// Kernel()
  ///  ..observe(TalkerRiverpodObserver(talker: talkerGlobalInstance))
  ///  // ... other configurations
  ///  ..run();
  /// ```
  void addRiverpodObserver(ProviderObserver observer) {
    if (_riverpodContainer != null) {
      throw KernelIsAlreadyRunningException();
    }

    _riverpodObservers.add(observer);
  }

  void addRiverpodOverride(Override override) {
    if (_riverpodContainer != null) {
      throw KernelIsAlreadyRunningException();
    }

    _riverpodOvverides.add(override);
  }

  @protected
  ProviderContainer createRiverpodContainer() {
    if (_riverpodContainer != null) {
      return _riverpodContainer!;
    }

    _riverpodContainer = ProviderContainer(
      observers: _riverpodObservers,
      overrides: [
        ..._riverpodOvverides,
      ],
    );

    return _riverpodContainer!;
  }
}
