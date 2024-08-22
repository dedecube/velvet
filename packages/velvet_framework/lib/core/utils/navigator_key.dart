import 'package:flutter/widgets.dart';
import 'package:velvet_framework/core/utils/kernel.dart';

GlobalKey<NavigatorState> navigatorKey() {
  return kernel().navigatorKey;
}
