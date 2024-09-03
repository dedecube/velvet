import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:velvet_framework/src/hooks/use_provider/use_provider.dart';
import 'package:velvet_framework/src/theme/providers/theme_dark_provider.dart';
import 'package:velvet_framework/src/theme/providers/theme_data_provider.dart';

ThemeData useCreateDarkTheme() {
  final context = useContext();
  final themeData = useProvider(themeDataProvider, context: context);
  final themeDefinition = useProvider(themeDarkProvider, context: context);

  return themeData.copyWith(
    brightness: Brightness.dark,
    extensions: [
      themeDefinition,
    ],
  );
}
