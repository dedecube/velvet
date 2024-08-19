import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_velvet_plugin/src/events/offline_event.dart';
import 'package:connectivity_velvet_plugin/src/events/online_event.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ConnectivityVelvetPlugin extends VelvetPlugin {
  @override
  FutureOr<void> boot() {
    Connectivity().onConnectivityChanged.listen(_onConnectivityChanged);
  }

  void _onConnectivityChanged(List<ConnectivityResult> onData) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.none)) {
      event(OfflineEvent());
    } else {
      event(OnlineEvent());
    }
  }
}
