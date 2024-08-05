import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_velvet_plugin/src/events/offline_event.dart';
import 'package:connectivity_velvet_plugin/src/events/online_event.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

part 'connectivity_event_bootstrap.g.dart';

@Riverpod(keepAlive: true, dependencies: [eventBus])
Future<void> connectivityEventBootstrap(
  ConnectivityEventBootstrapRef ref,
) async {
  final eventBus = ref.read(eventBusProvider);

  Connectivity().onConnectivityChanged.listen(
    (_) async {
      final result = await Connectivity().checkConnectivity();

      if (result.contains(ConnectivityResult.none)) {
        eventBus.event(OfflineEvent());
      } else {
        eventBus.event(OnlineEvent());
      }
    },
  );
}
