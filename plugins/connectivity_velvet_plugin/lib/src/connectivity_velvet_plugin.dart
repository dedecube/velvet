import 'package:connectivity_velvet_plugin/src/bootstrap/connectivity_event_bootstrap.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ConnectivityVelvetPlugin extends VelvetPluginContract {
  @override
  install(Kernel kernel) {
    kernel.boot(connectivityEventBootstrap);
  }
}
