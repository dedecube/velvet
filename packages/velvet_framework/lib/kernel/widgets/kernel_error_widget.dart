import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/core/event/utils/event.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/hooks/use_effect_once/use_effect_once.dart';
import 'package:velvet_framework/kernel/events/hide_loading_widget_event.dart';
import 'package:velvet_framework/translation/contracts/translator_contract.dart';
import 'package:velvet_framework/translation/extensions/translator_extension.dart';

class KernelErrorWidget extends HookWidget {
  const KernelErrorWidget({
    super.key,
    required this.onRetry,
  });

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final translator = container.get<TranslatorContract>();

    useEffectOnce(() {
      event(HideLoadingWidgetEvent());

      return null;
    });

    return StreamBuilder(
      initialData: translator.currentLocale,
      stream: translator.localeStream,
      builder: (context, locale) {
        return MaterialApp(
          builder: (context, child) => Scaffold(
            appBar: AppBar(
              title: Text(
                context.translate('app.error.title'),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 4.0,
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: Theme.of(context).colorScheme.error,
                      size: 80,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      context.translate(
                        'app.error.message',
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: onRetry,
                      icon: const Icon(Icons.refresh),
                      label: Text(
                        context.translate('app.error.retry'),
                        style: const TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          theme: ThemeData.light(), // Replace with actual theme data
          darkTheme: ThemeData.dark(), // Replace with actual theme data
          themeMode: ThemeMode.system, // Replace with actual theme mode
          localizationsDelegates: translator.delegates(),
          supportedLocales: translator.supportedLocales,
          locale: locale.data,
        );
      },
    );
  }
}
