import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/kernel/mixins/setup_config_manager_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_event_but_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_logger_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_plugin_manager_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_riverpod_mixin.dart';
import 'package:velvet_framework/kernel/mixins/setup_widgets_mixin.dart';
import 'package:velvet_framework/kernel/widgets/kernel_widget.dart';

class Kernel extends KernelContract
    with
        SetupRiverpodMixin,
        SetupConfigManagerMixin,
        SetupPluginManagerMixin,
        SetupLoggerMixin,
        SetupEventButMixin,
        SetupWidgetsMixin {
  Kernel() {
    _init();
  }

  void _init() {
    container.allowReassignment = true;

    _registerItSelf();

    registerLogger();
    registerEventBus();
    registerConfigManager();
    registerPluginManager();
    addCorePlugins();
  }

  /// Register the Kernel to the container
  /// so it can be accessed from the container
  ///
  /// This is very important to make sure the Kernel is accessible
  /// from the container
  void _registerItSelf() {
    container.registerSingleton<KernelContract>(this);
  }

  /// See [navigatorKey] for more information
  static final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  /// See [resolutionKey] for more information
  static final _resolutionKey = GlobalKey();

  @override
  GlobalKey get resolutionKey => _resolutionKey;

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
