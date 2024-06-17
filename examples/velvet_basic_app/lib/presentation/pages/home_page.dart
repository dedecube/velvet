import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeSwitcher = useLocaleSwitcher();
    final translator = ref.watch(translatorProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.translate('home.title')),
            ElevatedButton(
              onPressed: () {
                if (translator.currentLocale == const Locale('en')) {
                  localeSwitcher(const Locale('it'));
                } else {
                  localeSwitcher(const Locale('en'));
                }
              },
              child: Text(context.translate('home.switch')),
            ),
          ],
        ),
      ),
    );
  }
}
