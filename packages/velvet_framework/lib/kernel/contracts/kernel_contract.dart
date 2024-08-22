import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velvet_framework/kernel/exceptions/kernel_is_already_running_exception.dart';
import 'package:velvet_framework/kernel/widgets/kernel_error_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';

abstract class KernelContract {
  KernelErrorWidget? errorWidget;
  KernelLoadingWidget? loadingWidget;

  /// Indicates if the kernel is running
  var _isRunning = false;

  ProviderContainer? riverpodContainer;

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
  GlobalKey<NavigatorState> get navigatorKey;

  /// This key is used to get the context of the KernelWidget
  /// It, combined with the [ProviderContainer], will be used to read providers
  ///
  /// ```dart
  /// ProviderScope
  ///   .riverpodContainerOf(Kernel.resolutionKey.currentContext!)
  ///   .read(...);
  /// ```
  GlobalKey get resolutionKey;

  // Set the initialization's error widget of the application
  /// If not set, the default error widget will be used
  ///
  /// IMPORTANT: The widget must return a MaterialApp at its root
  void usingError(KernelErrorWidget errorWidget);

  /// Set the initialization's loading widget of the application
  /// If not set, the default loading widget will be used
  ///
  /// IMPORTANT: The widget must return a MaterialApp at its root
  void usingLoading(KernelLoadingWidget loadingWidget);

  /// Run the application
  ///
  /// This method should be called at the end of the configuration
  /// This will initialize the application with the provided configuration.
  @mustCallSuper
  void run() {
    throwIfRunning();

    setAsRunning();
  }

  /// Set the kernel as running
  void setAsRunning() {
    _isRunning = true;
  }

  @protected
  void throwIfRunning() {
    if (_isRunning) {
      throw KernelIsAlreadyRunningException();
    }
  }
}
