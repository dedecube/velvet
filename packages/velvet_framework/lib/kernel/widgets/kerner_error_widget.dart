import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

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
          themeMode: ThemeMode.system,
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
