import 'package:velvet_framework/core/container.dart';
import 'package:velvet_framework/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/event/velvet_event.dart';

void event(VelvetEvent event) {
  container.get<VelvetEventBusContract>().dispatch(event);
}
