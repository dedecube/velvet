import 'package:flutter/material.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/theme/contracts/theme_definition_contract.dart';
import 'package:velvet_framework/theme/theme_definition.dart';

part 'wireframe_light.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class WireframeLight extends _$WireframeLight
    implements ThemeDefinitionContract {
  @override
  ThemeDefinition build() {
    return const ThemeDefinition(
      primary50: Color(0xFFF6FAFE),
      primary100: Color(0xFFDCE4E9),
      primary200: Color(0xFFB3B8EB),
      primary300: Color(0xFF98D0F1),
      primary400: Color(0xFF6EADF7),
      primary500: Color(0xFF2196F3),
      primary600: Color(0xFF1A77E5),
      primary700: Color(0xFF186CCF),
      primary800: Color(0xFF1464B9),
      primary900: Color(0xFF0D47A1),
      secondary50: Color(0xFFFFF7F3),
      secondary100: Color(0xFFFFE4D9),
      secondary200: Color(0xFFFFC2B3),
      secondary300: Color(0xFFFFA48D),
      secondary400: Color(0xFFFF7A66),
      secondary500: Color(0xFFFF5722),
      secondary600: Color(0xFFE64A19),
      secondary700: Color(0xFFD84315),
      secondary800: Color(0xFFBF360C),
      secondary900: Color(0xFF8C2D05),
      surface50: Color(0xFFFFFFFF),
      surface100: Color(0xFFEEEEEE),
      surface200: Color(0xFFDCE4E9),
      surface300: Color(0xFFC5C7C9),
      surface400: Color(0xFFABAFB3),
      surface500: Color(0xFF79747E),
      surface600: Color(0xFF555555),
      surface700: Color(0xFF40484C),
      surface800: Color(0xFF333333),
      surface900: Color(0xFF000000),
      surfaceInverse50: Color(0xFF000000),
      surfaceInverse100: Color(0xFF333333),
      surfaceInverse200: Color(0xFF40484C),
      surfaceInverse300: Color(0xFF555555),
      surfaceInverse400: Color(0xFF79747E),
      surfaceInverse500: Color(0xFFABAFB3),
      surfaceInverse600: Color(0xFFC5C7C9),
      surfaceInverse700: Color(0xFFDCE4E9),
      surfaceInverse800: Color(0xFFEEEEEE),
      surfaceInverse900: Color(0xFFFFFFFF),
    );
  }
}
