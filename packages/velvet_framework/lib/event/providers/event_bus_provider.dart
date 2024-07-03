import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/event/event_bus.dart';

part 'event_bus_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
EventBus eventBus(EventBusRef ref) {
  return EventBus();
}
