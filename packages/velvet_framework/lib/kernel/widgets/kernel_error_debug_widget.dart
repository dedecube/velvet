import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velvet_framework/kernel/widgets/components/stack_trace_main_error_alert.dart';
import 'package:velvet_framework/kernel/widgets/components/stack_trace_viewer.dart';
import 'package:velvet_framework/velvet_framework.dart';

class KernelErrorDebugWidget extends HookConsumerWidget {
  const KernelErrorDebugWidget({
    super.key,
    required this.error,
    required this.onRetry,
    required this.stackTrace,
  });

  final Object error;
  final VoidCallback onRetry;
  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translator = useMemoized(() => container.get<TranslatorContract>());
    final lightThemeData = useCreateLightTheme();
    final darkThemeData = useCreateDarkTheme();
    final themeConfig = useMemoized(() => config<ThemeConfigContract>());

    useEffectOnce(() {
      event(HideLoadingWidgetEvent());

      if (kDebugMode) {
        logger().error(
          'App startup failed',
          error: error,
          stackTrace: stackTrace,
        );
      }

      return null;
    });

    return StreamBuilder(
      initialData: translator.currentLocale,
      stream: translator.localeStream,
      builder: (context, locale) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, child) => Builder(
            key: resolutionKey(),
            builder: (context) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white38,
                elevation: 1,
                title: Text(
                  'Velvet | Stack'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.redAccent.withOpacity(0.8),
                    fontSize: 14,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StackTraceMainErrorAlert(error: error),
                    const SizedBox(height: 24),
                    StackTraceViewer(stackTrace: stackTrace),
                  ],
                ),
              ),
            ),
          ),
          theme: lightThemeData,
          darkTheme: darkThemeData,
          themeMode: themeConfig.themeMode,
          localizationsDelegates: translator.delegates(),
          supportedLocales: translator.supportedLocales,
          locale: locale.data,
        );
      },
    );
  }
}

class DynamicSpacedColumn extends StatelessWidget {
  const DynamicSpacedColumn({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    List<Widget> spacedChildren = [];

    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      // Add a spacer after every child except the last one
      if (i < children.length - 1) {
        spacedChildren.add(
          const SizedBox(
            height: 12,
          ),
        );
      }
    }

    return Column(
      children: spacedChildren,
    );
  }
}
