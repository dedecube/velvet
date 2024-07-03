import 'package:velvet_framework/event/contracts/event_contract.dart';
import 'package:velvet_framework/event/providers/event_bus_provider.dart';
import 'package:velvet_framework/utils/container.dart';

void event(EventContract event) {
  container().read(eventBusProvider).event(event);
}
