import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/core/event/velvet_event.dart';

class VelvetRouteDidStartUserGestureEvent extends VelvetEvent {
  VelvetRouteDidStartUserGestureEvent(
    this.route,
    this.previousRoute,
  );

  final Route route;

  final Route? previousRoute;
}
