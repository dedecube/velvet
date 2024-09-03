import 'package:flutter/material.dart';
import 'package:velvet_framework/src/theme/theme_definition.dart';

extension ThemeDefinitionThemeData on ThemeData {
  ThemeDefinition get themeDefinition => extension<ThemeDefinition>()!;
}
