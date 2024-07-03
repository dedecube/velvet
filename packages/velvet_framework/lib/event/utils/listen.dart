import 'dart:async';

import 'package:velvet_framework/event/contracts/event_contract.dart';
import 'package:velvet_framework/event/providers/event_bus_provider.dart';
import 'package:velvet_framework/utils/container.dart';

StreamSubscription<T> listen<T extends EventContract>(
  void Function(T event) callback,
) {
  return container().read(eventBusProvider).listen(callback);
}
