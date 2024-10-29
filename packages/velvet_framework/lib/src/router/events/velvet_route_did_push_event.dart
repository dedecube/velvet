import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/core/event/velvet_event.dart';

class VelvetRouteDidPushEvent extends VelvetEvent {
  VelvetRouteDidPushEvent(
    this.route,
    this.previousRoute,
  );

  final Route route;

  final Route? previousRoute;
}
