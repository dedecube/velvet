import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:velvet_framework/core/container.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/error_handling/contracts/error_handling_config_contract.dart';
import 'package:velvet_framework/error_handling/error_handling_default_config.dart';
import 'package:velvet_framework/error_handling/renderable_exception_contract.dart';
import 'package:velvet_framework/kernel/kernel.dart';

class ErrorHandlingPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerLazySingleton<ErrorHandlingConfigContract>(
      () => ErrorHandlingDefaultConfig(),
    );
  }

  @override
  void boot() {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (FlutterErrorDetails details) {
      final exception = details.exception;

      if (exception is RenderableException) {
        exception.render(Kernel.navigatorKey.currentState!.context);
      } else if (exception is Exception) {
        final errorHandlingConfig =
            container.get<ErrorHandlingConfigContract>();

        errorHandlingConfig.renderer(
          Kernel.navigatorKey.currentState!.context,
          exception,
        );
      }

      FlutterError.presentError(details);
    };

    PlatformDispatcher.instance.onError = (exception, stackTrace) {
      if (exception is RenderableException) {
        exception.render(Kernel.navigatorKey.currentState!.context);

        return true;
      } else if (exception is Exception) {
        final errorHandlingConfig =
            container.get<ErrorHandlingConfigContract>();

        errorHandlingConfig.renderer(
          Kernel.navigatorKey.currentState!.context,
          exception,
        );

        return true;
      }

      return false;
    };
  }
}
