import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/core/event/velvet_event.dart';

class VelvetRouteDidPopEvent extends VelvetEvent {
  VelvetRouteDidPopEvent(
    this.route,
    this.previousRoute,
  );

  final Route route;

  final Route? previousRoute;
}
