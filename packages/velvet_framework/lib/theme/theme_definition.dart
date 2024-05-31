import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme_definition.tailor.dart';

@TailorMixin(
  themeGetter: ThemeGetter.none,
)
class ThemeDefinition extends ThemeExtension<ThemeDefinition>
    with _$ThemeDefinitionTailorMixin {
  const ThemeDefinition({
    required this.primary50,
    required this.primary100,
    required this.primary200,
    required this.primary300,
    required this.primary400,
    required this.primary500,
    required this.primary600,
    required this.primary700,
    required this.primary800,
    required this.primary900,
    required this.secondary50,
    required this.secondary100,
    required this.secondary200,
    required this.secondary300,
    required this.secondary400,
    required this.secondary500,
    required this.secondary600,
    required this.secondary700,
    required this.secondary800,
    required this.secondary900,
    required this.surface50,
    required this.surface100,
    required this.surface200,
    required this.surface300,
    required this.surface400,
    required this.surface500,
    required this.surface600,
    required this.surface700,
    required this.surface800,
    required this.surface900,
    required this.surfaceInverse50,
    required this.surfaceInverse100,
    required this.surfaceInverse200,
    required this.surfaceInverse300,
    required this.surfaceInverse400,
    required this.surfaceInverse500,
    required this.surfaceInverse600,
    required this.surfaceInverse700,
    required this.surfaceInverse800,
    required this.surfaceInverse900,
  });

  // ---------------------------------------------------------------------------
  // Primary
  // ---------------------------------------------------------------------------

  @override
  final Color primary50;
  @override
  final Color primary100;
  @override
  final Color primary200;
  @override
  final Color primary300;
  @override
  final Color primary400;
  @override
  final Color primary500;
  @override
  final Color primary600;
  @override
  final Color primary700;
  @override
  final Color primary800;
  @override
  final Color primary900;

  // ---------------------------------------------------------------------------
  // Secondary
  // ---------------------------------------------------------------------------

  @override
  final Color secondary50;
  @override
  final Color secondary100;
  @override
  final Color secondary200;
  @override
  final Color secondary300;
  @override
  final Color secondary400;
  @override
  final Color secondary500;
  @override
  final Color secondary600;
  @override
  final Color secondary700;
  @override
  final Color secondary800;
  @override
  final Color secondary900;

  // ---------------------------------------------------------------------------
  // Surface
  // ---------------------------------------------------------------------------

  @override
  final Color surface50;
  @override
  final Color surface100;
  @override
  final Color surface200;
  @override
  final Color surface300;
  @override
  final Color surface400;
  @override
  final Color surface500;
  @override
  final Color surface600;
  @override
  final Color surface700;
  @override
  final Color surface800;
  @override
  final Color surface900;

  // ---------------------------------------------------------------------------
  // Surface Inverse
  // ---------------------------------------------------------------------------

  @override
  final Color surfaceInverse50;
  @override
  final Color surfaceInverse100;
  @override
  final Color surfaceInverse200;
  @override
  final Color surfaceInverse300;
  @override
  final Color surfaceInverse400;
  @override
  final Color surfaceInverse500;
  @override
  final Color surfaceInverse600;
  @override
  final Color surfaceInverse700;
  @override
  final Color surfaceInverse800;
  @override
  final Color surfaceInverse900;
}
