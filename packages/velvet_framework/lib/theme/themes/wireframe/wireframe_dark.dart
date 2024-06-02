import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/theme/contracts/theme_definition_contract.dart';
import 'package:velvet_framework/theme/theme_definition.dart';

part 'wireframe_dark.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class WireframeDark extends _$WireframeDark implements ThemeDefinitionContract {
  @override
  ThemeDefinition build() {
    const secondary = Color.fromARGB(255, 195, 0, 255);

    return ThemeDefinition(
      primary50: const Color(0xFFF6FAFE),
      primary100: const Color(0xFFDCE4E9),
      primary200: const Color(0xFFB3B8EB),
      primary300: const Color(0xFF98D0F1),
      primary400: const Color(0xFF6EADF7),
      primary500: const Color(0xFF2196F3),
      primary600: const Color(0xFF1A77E5),
      primary700: const Color(0xFF186CCF),
      primary800: const Color(0xFF1464B9),
      primary900: const Color(0xFF0D47A1),
      secondary50: const Color(0xFFFFF7F3),
      secondary100: const Color(0xFFFFE4D9),
      secondary200: const Color(0xFFFFC2B3),
      secondary300: const Color(0xFFFFA48D),
      secondary400: const Color(0xFFFF7A66),
      secondary500: const Color(0xFFFF5722),
      secondary600: const Color(0xFFE64A19),
      secondary700: const Color(0xFFD84315),
      secondary800: const Color(0xFFBF360C),
      secondary900: const Color(0xFF8C2D05),
      surface50: const Color(0xFF000000),
      surface100: const Color(0xFF333333),
      surface200: const Color(0xFF49454F),
      surface300: const Color(0xFF555555),
      surface400: const Color(0xFF79747E),
      surface500: const Color(0xFFABAFB3),
      surface600: const Color(0xFFC5C7C9),
      surface700: const Color(0xFFDCE4E9),
      surface800: const Color(0xFFEEEEEE),
      surface900: const Color(0xFFFFFFFF),
      surfaceInverse50: const Color(0xFFFFFFFF),
      surfaceInverse100: const Color(0xFFEEEEEE),
      surfaceInverse200: const Color(0xFFDCE4E9),
      surfaceInverse300: const Color(0xFFC5C7C9),
      surfaceInverse400: const Color(0xFFABAFB3),
      surfaceInverse500: const Color(0xFF79747E),
      surfaceInverse600: const Color(0xFF555555),
      surfaceInverse700: const Color(0xFF49454F),
      surfaceInverse800: const Color(0xFF333333),
      surfaceInverse900: const Color(0xFF000000),
    );
  }
}
