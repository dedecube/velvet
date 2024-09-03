import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/utils/config_manager.dart';
import 'package:velvet_framework/src/theme/config/default_theme_config.dart';
import 'package:velvet_framework/src/theme/contracts/theme_config_contract.dart';

class ThemePlugin extends VelvetPlugin {
  @override
  void register() {
    configManager().register<ThemeConfigContract>(
      DefaultThemeConfig(),
    );
  }
}
