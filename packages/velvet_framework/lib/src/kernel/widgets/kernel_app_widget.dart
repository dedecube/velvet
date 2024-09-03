import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:velvet_framework/src/core/utils/config.dart';
import 'package:velvet_framework/src/core/utils/resolution_key.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/router/contracts/velvet_router_contract.dart';
import 'package:velvet_framework/src/theme/contracts/theme_config_contract.dart';
import 'package:velvet_framework/src/theme/hooks/use_create_dark_theme.dart';
import 'package:velvet_framework/src/theme/hooks/use_create_light_theme.dart';
import 'package:velvet_framework/src/translation/contracts/translator_contract.dart';

class KernelAppWidget extends HookConsumerWidget {
  const KernelAppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = container.get<VelvetRouterContract>();
    final translator = container.get<TranslatorContract>();
    final lightThemeData = useCreateLightTheme();
    final darkThemeData = useCreateDarkTheme();
    final themeConfig = config<ThemeConfigContract>();

    return StreamBuilder(
      initialData: translator.currentLocale,
      stream: translator.localeStream,
      builder: (context, locale) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: translator.delegates(),
          supportedLocales: translator.supportedLocales,
          locale: locale.data,
          themeMode: themeConfig.themeMode,
          theme: lightThemeData,
          darkTheme: darkThemeData,
          builder: _routerBuilder,
        );
      },
    );
  }

  // ignore: avoid_returning_widgets
  /// The builder is used to ensure that Localizations are available.
  /// This enable usage of `translate` method in the entire app.
  Widget _routerBuilder(
    BuildContext context,
    Widget? child,
  ) {
    return Builder(
      key: resolutionKey(),
      builder: (context) => child!,
    );
  }
}
