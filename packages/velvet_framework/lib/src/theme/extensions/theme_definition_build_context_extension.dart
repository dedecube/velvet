import 'package:flutter/material.dart';
import 'package:velvet_framework/src/theme/theme_definition.dart';

extension ThemeDefinitionBuildContext on BuildContext {
  ThemeDefinition get theme => Theme.of(this).extension<ThemeDefinition>()!;
}
