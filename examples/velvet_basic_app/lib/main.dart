import 'package:velvet_basic_app/config.velvet.dart';
import 'package:velvet_basic_app/router.dart';
import 'package:velvet_framework/velvet_framework.dart' hide router;

void main() {
  final kernel = Kernel()..bindAsync(routerProvider, (ref) async => router);

  for (final config in configProviders) {
    kernel.bind(config.abstract, config.concrete);
  }

  kernel.run();
}
