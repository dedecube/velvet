import 'dart:ui';

import 'package:velvet_framework/src/translation/contracts/translation_config_contract.dart';

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
