import 'dart:async';

import 'package:event_bus/event_bus.dart' as event_bus;
import 'package:velvet_framework/event/contracts/event_contract.dart';

class EventBus {
  EventBus() : super();

  final _instance = event_bus.EventBus();

  void event(EventContract event) {
    _instance.fire(event);
  }

  StreamSubscription<T> listen<T extends EventContract>(
    void Function(T event) callback,
  ) {
    return _instance.on<T>().listen(callback);
  }
}
