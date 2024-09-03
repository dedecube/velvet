import 'package:flutter/material.dart';
import 'package:velvet_framework/src/core/event/utils/event.dart';
import 'package:velvet_framework/src/kernel/events/hide_loading_widget_event.dart';

class HideLoadingWidgetObserver extends NavigatorObserver {
  var _isFirstCall = false;

  @override
  void didPush(Route route, Route? previousRoute) {
    if (!_isFirstCall) {
      _isFirstCall = true;
      event(HideLoadingWidgetEvent());
    }
  }
}
