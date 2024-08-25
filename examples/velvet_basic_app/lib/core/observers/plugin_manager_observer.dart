import 'package:velvet_framework/velvet_framework.dart';

class PluginManagerObserver extends VelvetPluginManagerObserver {
  @override
  void afterBoot() {
    logger().info('VelvetPluginManager | Plugins booted');
  }

  @override
  void afterRegister() {
    logger().info('VelvetPluginManager | Plugins registered');
  }

  @override
  void beforeBoot() {
    logger().info('VelvetPluginManager | Booting plugins');
  }

  @override
  void beforeRegister() {
    logger().info('VelvetPluginManager | Registering plugins');
  }
}
