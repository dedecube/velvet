import 'package:http_client_velvet_plugin/http_client_velvet_plugin.dart';
import 'package:velvet_framework/velvet_framework.dart';

extension HttpClientProviderContainerExtension on ProviderContainer {
  Http httpClient() => read(httpClientProvider);
}
