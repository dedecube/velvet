import 'package:http_client_velvet_plugin/http_client_velvet_plugin.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

part 'http_client_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
Http httpClient(HttpClientRef ref) {
  final httpClientConfig = container.get<HttpClientConfigContract>();
  final httpConfig = HttpConfig(baseURL: httpClientConfig.baseURL);

  return Http(httpConfig);
}
