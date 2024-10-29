import 'package:http_client_velvet_plugin/src/http_client_velvet_plugin.dart';
import 'package:velvet_framework/velvet_framework.dart';

extension HttpClientOnVelvetContainerExtension on VelvetContainerContract {
  VelvetHttp get httpClient => get<VelvetHttp>(
        instanceName: HttpClientVelvetPlugin.velvetHttpToken,
      );

  VelvetHttpConfig get httpClientConfig => get<VelvetHttpConfig>(
        instanceName: HttpClientVelvetPlugin.velvetHttpConfigToken,
      );
}
