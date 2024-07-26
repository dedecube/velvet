import 'package:flutter/material.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/theme/contracts/theme_definition_contract.dart';
import 'package:velvet_framework/theme/theme_definition.dart';

part 'wireframe_dark.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class WireframeDark extends _$WireframeDark implements ThemeDefinitionContract {
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
      surface50: Color(0xFF000000),
      surface100: Color(0xFF333333),
      surface200: Color(0xFF49454F),
      surface300: Color(0xFF555555),
      surface400: Color(0xFF79747E),
      surface500: Color(0xFFABAFB3),
      surface600: Color(0xFFC5C7C9),
      surface700: Color(0xFFDCE4E9),
      surface800: Color(0xFFEEEEEE),
      surface900: Color(0xFFFFFFFF),
      surfaceInverse50: Color(0xFFFFFFFF),
      surfaceInverse100: Color(0xFFEEEEEE),
      surfaceInverse200: Color(0xFFDCE4E9),
      surfaceInverse300: Color(0xFFC5C7C9),
      surfaceInverse400: Color(0xFFABAFB3),
      surfaceInverse500: Color(0xFF79747E),
      surfaceInverse600: Color(0xFF555555),
      surfaceInverse700: Color(0xFF49454F),
      surfaceInverse800: Color(0xFF333333),
      surfaceInverse900: Color(0xFF000000),
    );
  }
}
