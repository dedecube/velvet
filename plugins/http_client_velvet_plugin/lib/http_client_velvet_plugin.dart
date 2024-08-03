library http_client_velvet_plugin;

// @index(['./**/(*.dart)','!./**/*.g.dart', '!./**/_*.dart'], f => `export '${f.path}.dart';`)
export './bootstrap.velvet.dart';
export './config.velvet.dart';
export './src/contracts/http_client_config_contract.dart';
export './src/extensions/http_client_provider_container_extension.dart';
export './src/providers/http_client_config_provider.dart';
export './src/providers/http_client_provider.dart';
// @endindex
