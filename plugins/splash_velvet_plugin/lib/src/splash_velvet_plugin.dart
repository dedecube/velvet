import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:velvet_framework/velvet_framework.dart';

/// A plugin for Velvet Framework that handles the splash screen functionality.
///
/// This plugin handles automatically preserving and removing the native splash.
class SplashVelvetPlugin extends VelvetPlugin {
  @override
  void register() {
    _preserveSplash();
    listen<HideLoadingWidgetEvent>((_) => _hideSplash());
  }

  /// Preserves the native splash screen.
  ///
  /// This method should be called during the application startup to preserve
  /// the native splash screen. It ensures that the Flutter widgets binding is
  /// initialized before preserving the splash screen.
  void _preserveSplash() {
    FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
    );
  }

  /// Hides the native splash screen.
  ///
  /// This method should be called when the loading process is complete and the
  /// application is ready to display its content. It removes the native splash
  /// screen from the screen.
  void _hideSplash() {
    FlutterNativeSplash.remove();
  }
}
