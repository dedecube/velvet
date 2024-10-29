import 'package:http_client_velvet_plugin/src/contracts/http_client_config_contract.dart';
import 'package:velvet_framework/velvet_framework.dart';

class DefaultHttpClientConfig implements HttpClientConfigContract {
  @override
  String get baseURL => envString('HTTP_CLIENT_BASE_URL', '')!;
}
