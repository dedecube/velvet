import 'dart:async';

import 'package:event_bus/event_bus.dart' as event_bus;
import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/src/core/event/velvet_event.dart';

class VelvetEventBus implements VelvetEventBusContract {
  VelvetEventBus() : super();

  final _instance = event_bus.EventBus(sync: true);

  @override
  void dispatch<T extends VelvetEvent>(T event) {
    _instance.fire(event);
  }

  @override
  StreamSubscription<T> on<T extends VelvetEvent>(
    void Function(T event) onEvent,
  ) {
    return _instance.on<T>().listen(onEvent);
  }
}
