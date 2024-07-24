import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velvet_framework/utils/container.dart' as util_container;
import 'package:velvet_framework/velvet_framework.dart';

typedef Create<T, R extends Ref> = T Function(R ref);

typedef UseCallback = void Function(Kernel kernel);

class Kernel {
  Widget? appWidget;
  KernelErrorWidget? errorWidget;
  KernelLoadingWidget? loadingWidget;

  /// A bag of services that will be bootstrapped
  final List<Create<FutureOr, FutureProviderRef>> _bootstrapServices = [];

  /// The kernel running status
  static bool _isRunning = false;

  /// A bag of Riverpod's [ProviderObserver] that will be used by the [ProviderScope]
  final List<ProviderObserver> _riverpodObservers = [];

  /// A bag of Riverpod's [Override] that will be used to override the original providers
  final List<Override> _riverpodOvverides = [];

  /// Indicates if the kernel is running
  static bool get isRunning => _isRunning;

  static ProviderContainer? container;

  /// This key is used to get the context of the Navigator
  /// It will be used to show dialogs, snackbars.
  ///
  /// ```dart
  /// showAboutDialog(
  ///  context: Kernel.navigatorKey.currentState!.context,
  ///  applicationName: 'Velvet Framework',
  /// );
  /// ```
  ///
  /// IMPORTANT: This key should be used only for showing dialogs, snackbars, custom error handling.
  /// If you need to read providers or get global context, use the [resolutionKey] instead.
  /// or use the [kernelContext] util function directly.
  static final navigatorKey = GlobalKey<NavigatorState>();

  /// This key is used to get the context of the KernelWidget
  /// It, combined with the [ProviderContainer], will be used to read providers
  ///
  /// ```dart
  /// ProviderScope
  ///   .containerOf(Kernel.resolutionKey.currentContext!)
  ///   .read(...);
  /// ```
  static final resolutionKey = GlobalKey();

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
    Provider<T> original,
    Create<T, ProviderRef<T>> create,
  ) {
    _throwIfRunning();

    _riverpodOvverides.add(original.overrideWith(create));
  }

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
  void bindAsync<T>(
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

  void use(void Function(Kernel kernel) callback) {
    _throwIfRunning();

    callback(this);
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

    container = ProviderContainer(
      observers: _riverpodObservers,
      overrides: [
        ..._riverpodOvverides,
        kernelBootstrapProvider.overrideWith((ref) async {
          // NOTE Maybe we should use Future.wait here
          for (var service in _bootstrapServices) {
            await service(ref);
          }
        }),
      ],
    );

    // TODO[epic=refactor] Move to error handling module
    FlutterError.onError = (FlutterErrorDetails details) {
      final exception = details.exception;

      if (exception is RenderableExceptionContract) {
        exception.render(navigatorKey.currentState!.context);
      } else if (exception is Exception) {
        final errorHandlingConfig =
            util_container.container().read(errorHandlingConfigProvider);

        errorHandlingConfig.renderer(
          navigatorKey.currentState!.context,
          exception,
        );
      }

      FlutterError.presentError(details);
    };

    // TODO[epic=refactor] Move to error handling module
    PlatformDispatcher.instance.onError = (exception, stackTrace) {
      if (exception is RenderableExceptionContract) {
        exception.render(navigatorKey.currentState!.context);

        return true;
      } else if (exception is Exception) {
        final errorHandlingConfig =
            util_container.container().read(errorHandlingConfigProvider);

        errorHandlingConfig.renderer(
          navigatorKey.currentState!.context,
          exception,
        );

        return true;
      }

      return false;
    };

    runApp(
      UncontrolledProviderScope(
        container: container!,
        child: KernelWidget(
          errorWidget: errorWidget,
          loadingWidget: loadingWidget,
        ),
      ),
    );
  }
}
