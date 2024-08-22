import 'dart:async';

import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

abstract class VelvetPluginManagerContract {
  void add(VelvetPlugin plugin);
  FutureOr<void> runRegister();
  FutureOr<void> runBoot();
}
