import 'package:http_client_velvet_plugin/http_client_velvet_plugin.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

part 'http_client_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [httpClientConfig])
Http httpClient(HttpClientRef ref) {
  final apiConfig = ref.read(httpClientConfigProvider);
  final httpConfig = HttpConfig(baseURL: apiConfig.baseURL);

  return Http(httpConfig);
}
