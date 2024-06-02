import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/kernel/widgets/kernel_widget.dart';
import 'package:velvet_framework/router/providers/router_provider.dart';
import 'package:velvet_framework/theme/providers/theme_dark_provider.dart';
import 'package:velvet_framework/theme/providers/theme_data_provider.dart';
import 'package:velvet_framework/theme/providers/theme_light_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';

class KernelAppWidget extends HookConsumerWidget {
  const KernelAppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    final translator = ref.read(translatorProvider);
    final lightThemeDefinition = ref.watch(themeLightProvider);
    final darkThemeDefinition = ref.watch(themeDarkProvider);
    final themeData = ref.watch(themeDataProvider);

    final lightThemeData = themeData.copyWith(
      brightness: Brightness.light,
      extensions: [
        lightThemeDefinition,
      ],
    );

    final darkThemeData = themeData.copyWith(
      brightness: Brightness.dark,
      extensions: [
        darkThemeDefinition,
      ],
    );

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
          key: KernelWidget.resolutionKey,
          themeMode: ThemeMode.system,
          theme: lightThemeData,
          darkTheme: darkThemeData,
        );
      },
    );
  }
}
