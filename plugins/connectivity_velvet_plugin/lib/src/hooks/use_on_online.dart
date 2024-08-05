import 'dart:async';

import 'package:connectivity_velvet_plugin/src/events/online_event.dart';
import 'package:velvet_framework/velvet_framework.dart';

void useOnOnline(FutureOr<void> Function() callback) {
  useEventListener<OnlineEvent>((event) async {
    await callback();
  });
}
