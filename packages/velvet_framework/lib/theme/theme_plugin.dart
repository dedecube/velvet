import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/core/utils/config_manager.dart';
import 'package:velvet_framework/theme/config/default_theme_config.dart';
import 'package:velvet_framework/theme/contracts/theme_config_contract.dart';

class ThemePlugin extends VelvetPlugin {
  @override
  void register() {
    configManager().register<ThemeConfigContract>(
      DefaultThemeConfig(),
    );
  }
}
