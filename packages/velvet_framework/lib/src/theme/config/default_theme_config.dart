import 'package:flutter/material.dart';

import 'package:velvet_framework/src/theme/contracts/theme_config_contract.dart';

class DefaultThemeConfig extends ThemeConfigContract {
  @override
  ThemeMode get themeMode => ThemeMode.system;
}
