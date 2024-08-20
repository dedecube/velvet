import 'dart:ui';

import 'package:velvet_framework/velvet_framework.dart';

class DefaultTranslationConfig extends TranslationConfigContract {
  @override
  Locale get defaultLocale => const Locale('en');

  @override
  Locale get fallbackLocale => const Locale('en');

  @override
  bool get shouldUseOperatingSystemLocale => true;

  @override
  List<Locale> get supportedLocales => [const Locale('en')];
}
