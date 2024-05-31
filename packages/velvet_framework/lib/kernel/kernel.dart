import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velvet_framework/kernel/exceptions/kernel_is_already_running_exception.dart';
import 'package:velvet_framework/kernel/providers/kernel_bootstrap_provider.dart';
import 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_widget.dart';
import 'package:velvet_framework/kernel/widgets/kerner_error_widget.dart';

typedef Create<T, R extends Ref> = T Function(R ref);

class Kernel {
  Widget? appWidget;
  KernelErrorWidget? errorWidget;
  KernelLoadingWidget? loadingWidget;

  /// A bag of services that will be bootstrapped
  final List<Create<FutureOr, FutureProviderRef>> _bootstrapServices = [];

  /// The kernel running status
  bool _isRunning = false;

  /// A bag of Riverpod's [ProviderObserver] that will be used by the [ProviderScope]
  final List<ProviderObserver> _riverpodObservers = [];

  /// A bag of Riverpod's [Override] that will be used to override the original providers
  final List<Override> _riverpodOvverides = [];

  /// Indicates if the kernel is running
  bool get isRunning => _isRunning;

  /// Bind a new provider to the list of providers.
  /// This will override the original provider with the new one.
  ///
  /// Useful for replace a service with another one for more scalable implementations or testing.
  ///
  /// Internally, this method uses Riverpod's [overrideWith] method.
  ///
  /// ```dart
  /// Kernel()
  ///  ..bind(firebaseProvider, (ref) => FirebaseService())
  ///  // ... other configurations
  ///  ..run();
  /// ```
  void bind<T>(
    FutureProvider<T> original,
    Create<FutureOr<T>, FutureProviderRef<T>> create,
  ) {
    _throwIfRunning();

    _riverpodOvverides.add(original.overrideWith(create));
  }

  /// Add a new service to the list of services that will be bootstrapped
  ///
  /// ```dart
  /// Kernel()
  ///   ..boot(firebaseBootstrap)
  ///   // ... other configurations
  ///   ..run();
  /// ```
  boot(Create<FutureOr, FutureProviderRef> create) {
    _throwIfRunning();

    _bootstrapServices.add(create);
  }

  /// Add a list of services to the list of services that will be bootstrapped
  /// Internally, this method uses the [boot] method
  ///
  /// ```dart
  /// Kernel()
  ///  ..bootMany([firebaseBootstrap, deviceOrientationBootstrap])
  /// // ... other configurations
  /// ..run();
  /// ```
  bootMany(List<Create<FutureOr, FutureProviderRef>> creates) {
    _throwIfRunning();

    _bootstrapServices.addAll(creates);
  }

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
  void observe(ProviderObserver observer) {
    _throwIfRunning();

    _riverpodObservers.add(observer);
  }

  // Set the initialization's error widget of the application
  /// If not set, the default error widget will be used
  ///
  /// IMPORTANT: The widget must return a MaterialApp at its root
  void usingError(KernelErrorWidget errorWidget) {
    _throwIfRunning();

    this.errorWidget = errorWidget;
  }

  /// Set the initialization's loading widget of the application
  /// If not set, the default loading widget will be used
  ///
  /// IMPORTANT: The widget must return a MaterialApp at its root
  void usingLoading(KernelLoadingWidget loadingWidget) {
    _throwIfRunning();

    this.loadingWidget = loadingWidget;
  }

  /// Run the application
  ///
  /// This method should be called at the end of the configuration
  ///
  /// ```dart
  /// Kernel()
  ///   ..boot(firebaseBootstrap)
  ///   ..observe(TalkerRiverpodObserver(talker: talkerGlobalInstance))
  ///   ..run();
  /// ```
  ///
  /// This will initialize the application with the provided configuration.
  void run() {
    _throwIfRunning();

    _setAsRunning();

    WidgetsFlutterBinding.ensureInitialized();

    runApp(
      ProviderScope(
        observers: _riverpodObservers,
        overrides: [
          ..._riverpodOvverides,
          kernelBootstrapProvider.overrideWith((ref) async {
            for (var service in _bootstrapServices) {
              service(ref);
            }
          }),
        ],
        child: KernelWidget(
          errorWidget: errorWidget,
          loadingWidget: loadingWidget,
        ),
      ),
    );
  }

  /// Check if the kernel is running.
  /// If it is, throw a [KernelIsAlreadyRunningException]
  /// to prevent the user from changing the configuration
  /// while the application is already running.
  _throwIfRunning() {
    if (isRunning) {
      throw KernelIsAlreadyRunningException();
    }
  }

  /// Set the kernel as running
  void _setAsRunning() {
    _isRunning = true;
  }
}
