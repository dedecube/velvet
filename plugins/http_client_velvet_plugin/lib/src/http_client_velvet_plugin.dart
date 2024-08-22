import 'package:http_client_velvet_plugin/http_client_velvet_plugin.dart';
import 'package:http_client_velvet_plugin/src/contracts/http_client_contract.dart';
import 'package:http_client_velvet_plugin/src/default_http_client.dart';
import 'package:velvet_framework/velvet_framework.dart';

class HttpClientVelvetPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerLazySingleton<HttpClientContract>(() {
      final httpClientConfig = config<HttpClientConfigContract>();
      final httpConfig = HttpConfig(baseURL: httpClientConfig.baseURL);

      return DefaultHttpClient(httpConfig);
    });
  }
}
