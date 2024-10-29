import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/core/event/velvet_event.dart';

class VelvetRouteDidReplaceEvent extends VelvetEvent {
  VelvetRouteDidReplaceEvent(
    this.newRoute,
    this.oldRoute,
  );

  final Route? newRoute;

  final Route? oldRoute;
}
