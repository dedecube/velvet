import 'package:velvet_basic_app/loaders/config_loader.dart';
import 'package:velvet_basic_app/presentation/router.dart';
import 'package:velvet_framework/velvet_framework.dart' hide router;

void main() {
  final kernel = Kernel()
    ..bindAsync(routerProvider, (ref) async => router)
    ..boot(translationLocaleFromStoreBootstrap);

  for (final config in configLoader()) {
    kernel.bind(config.toOverride, (ref) => config);
  }

  kernel.run();
}
