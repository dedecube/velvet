import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/core/utils/config.dart';
import 'package:velvet_framework/core/utils/config_manager.dart';
import 'package:velvet_framework/error_handling/config/default_error_handling_config.dart';
import 'package:velvet_framework/error_handling/contracts/error_handling_config_contract.dart';
import 'package:velvet_framework/error_handling/renderable_exception.dart';
import 'package:velvet_framework/utils/navigator_context.dart';

class ErrorHandlingPlugin extends VelvetPlugin {
  @override
  void register() {
    configManager().register<ErrorHandlingConfigContract>(
      DefaultErrorHandlingConfig(),
    );
  }

  @override
  void boot() {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (FlutterErrorDetails details) {
      final exception = details.exception;

      if (exception is Exception) {
        renderException(exception);
      }

      FlutterError.presentError(details);
    };

    PlatformDispatcher.instance.onError = (exception, stackTrace) {
      if (exception is Exception) {
        renderException(exception);

        return true;
      }

      return false;
    };
  }

  void renderException(Exception exception) {
    if (exception is RenderableException) {
      (exception as RenderableException).render(navigatorContext());

      return;
    }

    config<ErrorHandlingConfigContract>().renderer(
      navigatorContext(),
      exception,
    );
  }
}
