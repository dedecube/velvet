import 'package:velvet_basic_app/bootstrap.velvet.dart';
import 'package:velvet_basic_app/config.velvet.dart';
import 'package:velvet_basic_app/config/error_handling_config.dart';
import 'package:velvet_basic_app/config/form_config.dart';
import 'package:velvet_basic_app/presentation/routes.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  Kernel()
    ..boot(translationLocaleFromStoreBootstrap)
    ..bind(routesProvider, (ref) => $routes.routes)
    ..use((kernel) {
      for (final configBinder in configProviders) {
        kernel.bind(configBinder.abstract, configBinder.concrete);
      }

      for (final bootstrap in bootstrapFunctions) {
        kernel.boot(bootstrap);
      }
    })
    ..installPlugin(
      AnonymousVelvetPlugin(
        registerCallback: () {
          container.registerLazySingleton<ErrorHandlingConfigContract>(
            () => ErrorHandlingConfig(),
          );

          container
              .registerLazySingleton<FormConfigContract>(() => FormConfig());
        },
      ),
    )
    ..run();
}
