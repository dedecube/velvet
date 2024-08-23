import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/kernel/widgets/kernel_error_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';

mixin SetupWidgetsMixin on KernelContract {
  // Set the initialization's error widget of the application
  /// If not set, the default error widget will be used
  ///
  /// NOTE: The widget must return a MaterialApp at its root
  @override
  void usingError(KernelErrorWidget errorWidget) {
    throwIfRunning();

    this.errorWidget = errorWidget;
  }

  /// Set the initialization's loading widget of the application
  /// If not set, the default loading widget will be used
  ///
  /// NOTE: The widget must return a MaterialApp at its root
  @override
  void usingLoading(KernelLoadingWidget loadingWidget) {
    throwIfRunning();

    this.loadingWidget = loadingWidget;
  }
}
