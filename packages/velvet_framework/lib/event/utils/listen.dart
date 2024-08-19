import 'dart:async';

import 'package:velvet_framework/core/container.dart';
import 'package:velvet_framework/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/event/velvet_event.dart';

StreamSubscription<T> listen<T extends VelvetEvent>(
  void Function(T event) callback,
) {
  return container.get<VelvetEventBusContract>().on<T>(callback);
}
