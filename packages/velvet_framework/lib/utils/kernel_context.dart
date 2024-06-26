import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

BuildContext kernelContext() {
  return KernelWidget.resolutionKey.currentContext!;
}
