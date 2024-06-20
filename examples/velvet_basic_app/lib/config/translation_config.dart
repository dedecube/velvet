import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class TranslationConfig extends TranslationConfigContract {
  @override
  Locale get defaultLocale => const Locale('it');

  @override
  Locale get fallbackLocale => const Locale('en');

  @override
  List<Locale> get supportedLocales => [
        const Locale('en'),
        const Locale('it'),
      ];

  @override
  bool get shouldUseOperatingSystemLocale => true;
}
