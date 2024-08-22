import 'package:flutter/widgets.dart';
import 'package:velvet_framework/core/utils/kernel.dart';

GlobalKey resolutionKey() {
  return kernel().resolutionKey;
}
