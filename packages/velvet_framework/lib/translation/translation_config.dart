import 'package:envied/envied.dart';
import 'package:flutter/widgets.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';

part 'translation_config.g.dart';

@Envied()
class TranslationConfig extends TranslationConfigContract {
  @EnviedField(varName: 'TRANSLATION_DEFAULT_LOCALE', defaultValue: 'it')
  static const String _defaultLocale = _TranslationConfig._defaultLocale;

  @EnviedField(varName: 'TRANSLATION_FALLBACK_LOCALE', defaultValue: 'en')
  static const String _fallbackLocale = _TranslationConfig._fallbackLocale;

  @EnviedField(varName: 'TRANSLATION_SUPPORTED_LOCALES', defaultValue: 'en,it')
  static const String _supportedLocales = _TranslationConfig._supportedLocales;

  @override
  Locale get defaultLocale => const Locale(_defaultLocale);

  @override
  Locale get fallbackLocale => const Locale(_fallbackLocale);

  @override
  List<Locale> get supportedLocales =>
      _supportedLocales.split(',').map((locale) => Locale(locale)).toList();
}
