import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:velvet_framework/velvet_framework.dart';

/// A plugin for Velvet Framework that handles the splash screen functionality.
///
/// This plugin handles automatically preserving and removing the native splash.
/// 
/// Example of usage:
/// ```dart
///   Kernel()
///    ..plugin(SplashVelvetPlugin())
///    ..run();
/// ```
class SplashVelvetPlugin extends VelvetPluginContract {
  @override
  install(Kernel kernel) {
    _preserveSplash();

    kernel.boot((ref) {
      final eventBus = ref.read(eventBusProvider);
      eventBus.listen<HideLoadingWidgetEvent>((_) => _hideSplash());
    });
  }

  /// Preserves the native splash screen.
  ///
  /// This method should be called during the application startup to preserve
  /// the native splash screen. It ensures that the Flutter widgets binding is
  /// initialized before preserving the splash screen.
  _preserveSplash() {
    FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
    );
  }

  /// Hides the native splash screen.
  ///
  /// This method should be called when the loading process is complete and the
  /// application is ready to display its content. It removes the native splash
  /// screen from the screen.
  _hideSplash() {
    FlutterNativeSplash.remove();
  }
}
