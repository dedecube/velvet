import 'package:http_client_velvet_plugin/http_client_velvet_plugin.dart';
import 'package:http_client_velvet_plugin/src/config/default_http_client_config.dart';
import 'package:velvet_framework/velvet_framework.dart';

class HttpClientVelvetPlugin extends VelvetPlugin {
  static const String velvetHttpToken = 'http_client.velvet_http';

  static const String velvetHttpConfigToken = 'http_client.velvet_http_config';

  @override
  void register() {
    configManager().register<HttpClientConfigContract>(
      DefaultHttpClientConfig(),
    );

    container.registerLazySingleton<VelvetHttpConfig>(
      () {
        final apiConfig = config<HttpClientConfigContract>();

        return VelvetHttpConfig(baseURL: apiConfig.baseURL);
      },
      instanceName: velvetHttpConfigToken,
    );

    container.registerLazySingleton<VelvetHttp>(
      () {
        final apiConfig = config<HttpClientConfigContract>();

        final httpConfig = VelvetHttpConfig(baseURL: apiConfig.baseURL);

        return VelvetHttp(httpConfig);
      },
      instanceName: velvetHttpToken,
    );
  }

  @override
  void boot() {
    _checkBaseURL();
  }

  void _checkBaseURL() {
    if (container.httpClientConfig.baseURL.isEmpty) {
      throw Exception(
        'HTTP_CLIENT_BASE_URL is not set. Please set it in .env or provide a custom implementation of HttpClientConfigContract',
      );
    }
  }
}
