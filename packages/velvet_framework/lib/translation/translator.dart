import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/translation/contracts/translator_adapter_contract.dart';
import 'package:velvet_framework/translation/exceptions/locale_not_available_exception.dart';
import 'package:velvet_framework/translation/storables/locale_storable.dart';

class Translator {
  Translator(
    this.config,
    this.adapter,
  ) {
    currentLocale = config.defaultLocale;

    if (config.shouldUseOperatingSystemLocale) {
      _loadFromOS();
    }
  }

  final TranslatorAdapterContract adapter;
  final TranslationConfigContract config;

  late Locale currentLocale;

  final _localeStream = StreamController<Locale?>.broadcast();

  Stream<Locale?> get localeStream => _localeStream.stream;

  setLocale(BuildContext context, Locale locale) {
    if (!config.supportedLocales.contains(locale)) {
      throw LocaleNotAvailableException(locale);
    }

    currentLocale = locale;
    _localeStream.add(locale);

    LocaleStorable().set(locale.languageCode);
    adapter.refresh(context, locale);
  }

  // Load the locale from the operating system
  // Here we can't use the setLocale because no context is available.
  _loadFromOS() {
    var locale = WidgetsBinding.instance.window.locale;

    var languageCode = locale.languageCode;

    if (config.supportedLocales.contains(Locale(languageCode))) {
      currentLocale = locale;
    }
  }

  List<LocalizationsDelegate> delegates() {
    return [
      adapter.delegate,
      ...GlobalMaterialLocalizations.delegates,
      GlobalWidgetsLocalizations.delegate,
    ];
  }

  get supportedLocales {
    return config.supportedLocales;
  }

  String translate(
    BuildContext context,
    String key, {
    Map<String, String>? args,
  }) {
    return adapter.translate(context, key, args);
  }
}
