import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/core/event/utils/event.dart';
import 'package:velvet_framework/src/router/events/velvet_route_did_pop_event.dart';
import 'package:velvet_framework/src/router/events/velvet_route_did_push_event.dart';
import 'package:velvet_framework/src/router/events/velvet_route_did_remove_event.dart';
import 'package:velvet_framework/src/router/events/velvet_route_did_replace_event.dart';
import 'package:velvet_framework/src/router/events/velvet_route_did_start_user_gesture_event.dart';
import 'package:velvet_framework/src/router/events/velvet_route_did_stop_user_gesture_event.dart';

class VelvetProxyRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    event(VelvetRouteDidPushEvent(route, previousRoute));
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    event(VelvetRouteDidPopEvent(route, previousRoute));
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    event(VelvetRouteDidRemoveEvent(route, previousRoute));
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    event(VelvetRouteDidReplaceEvent(newRoute, oldRoute));
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    event(VelvetRouteDidStartUserGestureEvent(route, previousRoute));
  }

  @override
  void didStopUserGesture() {
    event(VelvetRouteDidStopUserGestureEvent());
  }
}
