import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

abstract class VelvetPluginManagerContract {
  void add(VelvetPlugin plugin);
  void runRegister();
  void runBoot();
}
