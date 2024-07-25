import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/kernel/hooks/use_dark_theme.dart';
import 'package:velvet_framework/kernel/hooks/use_light_theme.dart';
import 'package:velvet_framework/kernel/kernel.dart';
import 'package:velvet_framework/router/providers/router_provider.dart';
import 'package:velvet_framework/theme/providers/theme_config_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';

class KernelAppWidget extends HookConsumerWidget {
  const KernelAppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    final translator = ref.read(translatorProvider);
    final lightThemeData = useLightTheme();
    final darkThemeData = useDarkTheme();
    final themeConfig = ref.read(themeConfigProvider);

    return StreamBuilder(
      initialData: translator.currentLocale,
      stream: translator.localeStream,
      builder: (context, locale) {
        return MaterialApp.router(
          routerConfig: router.requireValue,
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
      key: Kernel.resolutionKey,
      builder: (context) => child!,
    );
  }
}
