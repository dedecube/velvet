import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/kernel/hooks/use_dark_theme.dart';
import 'package:velvet_framework/kernel/hooks/use_light_theme.dart';
import 'package:velvet_framework/kernel/kernel.dart';
import 'package:velvet_framework/theme/providers/theme_config_provider.dart';
import 'package:velvet_framework/translation/extensions/translator_extension.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';

class KernelErrorWidget extends HookConsumerWidget {
  const KernelErrorWidget({
    super.key,
    required this.error,
    required this.onRetry,
    required this.stackTrace,
  });

  final Object error;
  final VoidCallback onRetry;
  final StackTrace stackTrace;

  @override
  build(BuildContext context, WidgetRef ref) {
    final translator = ref.read(translatorProvider);
    final lightThemeData = useLightTheme();
    final darkThemeData = useDarkTheme();
    final themeConfig = ref.read(themeConfigProvider);

    return StreamBuilder(
      initialData: translator.currentLocale,
      stream: translator.localeStream,
      builder: (context, locale) {
        return MaterialApp(
          builder: (context, child) => Builder(
            key: Kernel.resolutionKey,
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(
                  context.translate('velvet.kernel.widgets.error.title'),
                ),
              ),
              body: Center(
                child: Column(
                  children: [
                    Text(
                      context.translate(
                        'velvet.kernel.widgets.error.message',
                        args: {
                          'error': error.toString(),
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: onRetry,
                      child: Text(
                        context.translate('velvet.kernel.widgets.error.retry'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          theme: lightThemeData,
          darkTheme: darkThemeData,
          themeMode: themeConfig.themeMode,
          navigatorKey: Kernel.navigatorKey,
          localizationsDelegates: translator.delegates(),
          supportedLocales: translator.supportedLocales,
          locale: locale.data,
          home: const SizedBox.shrink(),
        );
      },
    );
  }
}
