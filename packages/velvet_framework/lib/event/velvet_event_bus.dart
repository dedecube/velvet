import 'dart:async';

import 'package:event_bus/event_bus.dart' as event_bus;
import 'package:velvet_framework/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/event/velvet_event.dart';

class VelvetEventBus implements VelvetEventBusContract {
  VelvetEventBus() : super();

  final _instance = event_bus.EventBus();

  @override
  void dispatch(VelvetEvent event) {
    _instance.fire(event);
  }

  @override
  StreamSubscription<T> on<T extends VelvetEvent>(
    void Function(T event) onEvent,
  ) {
    return _instance.on<T>().listen(onEvent);
  }
}
