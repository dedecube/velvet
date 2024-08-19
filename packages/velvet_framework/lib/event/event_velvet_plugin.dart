import 'package:velvet_framework/core/container.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/event/velvet_event_bus.dart';

class EventVelvetPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerSingleton<VelvetEventBusContract>(VelvetEventBus());
  }
}
