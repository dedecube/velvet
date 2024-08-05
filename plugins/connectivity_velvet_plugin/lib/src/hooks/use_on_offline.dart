import 'dart:async';

import 'package:connectivity_velvet_plugin/src/events/offline_event.dart';
import 'package:velvet_framework/velvet_framework.dart';

void useOnOffline(FutureOr<void> Function() callback) {
  useEventListener<OfflineEvent>((event) async {
    await callback();
  });
}
