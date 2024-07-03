import 'package:velvet_basic_app/config.velvet.dart';
import 'package:velvet_basic_app/presentation/routes.dart';
import 'package:velvet_framework/velvet_framework.dart' hide routes;

void main() {
  Kernel()
    ..boot(translationLocaleFromStoreBootstrap)
    ..bind(routesProvider, (ref) => routes)
    ..use((kernel) {
      for (final configBinder in configProviders) {
        kernel.bind(configBinder.abstract, configBinder.concrete);
      }
    })
    ..use((kernel) {
      kernel.boot(
        (ref) => listen<LocaleLoadedFromStore>(
          (event) => talkerGlobalInstance.info(event.locale),
        ),
      );
    })
    ..run();
}
