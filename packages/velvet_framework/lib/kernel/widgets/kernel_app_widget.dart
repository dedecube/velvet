import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class KernelAppWidget extends HookConsumerWidget {
  const KernelAppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    final translator = ref.read(translatorProvider);
    final lightThemeData = useLightTheme();
    final darkThemeData = useDarkTheme();

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
          themeMode: ThemeMode.system,
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
