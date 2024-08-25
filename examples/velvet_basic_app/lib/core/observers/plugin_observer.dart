import 'package:velvet_framework/velvet_framework.dart';

class PluginObserver extends VelvetPluginObserver {
  @override
  void beforeBoot(VelvetPlugin plugin) {
    logger().info('${_name(plugin)} | Booting plugin...');
  }

  @override
  void afterBoot(VelvetPlugin plugin) {
    logger().info('${_name(plugin)} | Plugin booted');
  }

  @override
  void beforeRegister(VelvetPlugin plugin) {
    logger().info('${_name(plugin)} | Registering plugin...');
  }

  @override
  void afterRegister(VelvetPlugin plugin) {
    logger().info('${_name(plugin)} | Plugin registered');
  }

  String _name(VelvetPlugin plugin) {
    return plugin.toString().after('Instance of').between('\'', '\'');
  }
}
