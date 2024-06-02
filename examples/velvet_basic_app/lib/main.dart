import 'package:velvet_basic_app/config/dev_inspector_config.dart';
import 'package:velvet_basic_app/config/router_config.dart';
import 'package:velvet_basic_app/config/translation_config.dart';
import 'package:velvet_basic_app/router.dart';
import 'package:velvet_framework/velvet_framework.dart' hide router;

void main() {
  Kernel()
    ..bindAsync(routerProvider, (ref) async => router)
    ..bind(routerConfigProvider, (ref) => RouterConfig())
    ..bind(devInspectorConfigProvider, (ref) => DevInspectorConfig())
    ..bind(translationConfigProvider, (ref) => TranslationConfig())
    ..run();
}
