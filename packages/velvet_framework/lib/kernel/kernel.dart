import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/kernel/mixins/setup_config_manager_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_event_but_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_logger_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_plugin_manager_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_riverpod_mixin.dart';
import 'package:velvet_framework/kernel/widgets/kernel_error_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';
import 'package:velvet_framework/kernel/widgets/kernel_widget.dart';

class Kernel extends KernelContract
    with
        SetupRiverpodMixin,
        SetupConfigManagerMixin,
        SetupPluginManagerMixin,
        SetupLoggerMixin,
        SetupEventButMixin {
  Kernel() {
    _init();
  }

  void _init() {
    container.allowReassignment = true;

    _registerItSelf();

    registerConfigManager();
    registerPluginManager();
    registerLogger();
    registerEventBus();
    installCorePlugins();
  }

  /// Register the Kernel to the container
  /// so it can be accessed from the container
  ///
  /// This is very important to make sure the Kernel is accessible
  /// from the container
  void _registerItSelf() {
    container.registerSingleton<KernelContract>(this);
  }

  static final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  static final _resolutionKey = GlobalKey();

  @override
  GlobalKey get resolutionKey => _resolutionKey;

  // Set the initialization's error widget of the application
  /// If not set, the default error widget will be used
  ///
  /// IMPORTANT: The widget must return a MaterialApp at its root
  @override
  void usingError(KernelErrorWidget errorWidget) {
    throwIfRunning();

    this.errorWidget = errorWidget;
  }

  /// Set the initialization's loading widget of the application
  /// If not set, the default loading widget will be used
  ///
  /// IMPORTANT: The widget must return a MaterialApp at its root
  @override
  void usingLoading(KernelLoadingWidget loadingWidget) {
    throwIfRunning();

    this.loadingWidget = loadingWidget;
  }

  @override
  void run() async {
    super.run();

    WidgetsFlutterBinding.ensureInitialized();

    registerDefaultLoggerConfig();

    runPluginCallbacks();

    await pluginManager.runRegister();

    runConfigCallbacks();

    runApp(
      UncontrolledProviderScope(
        container: createRiverpodContainer(),
        child: KernelWidget(
          errorWidget: errorWidget,
          loadingWidget: loadingWidget,
        ),
      ),
    );
  }
}
