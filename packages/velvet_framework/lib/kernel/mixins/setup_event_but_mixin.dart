import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/core/event/velvet_event_bus.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';

mixin SetupEventButMixin on KernelContract {
  @protected
  void registerEventBus() {
    container.registerSingleton<VelvetEventBusContract>(VelvetEventBus());
  }
}
