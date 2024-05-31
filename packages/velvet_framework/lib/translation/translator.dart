import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/translation/contracts/translator_adapter_contract.dart';

class Translator {
  Translator(this.config, this.adapter);
  final TranslatorAdapterContract adapter;
  final TranslationConfigContract config;

  Locale currentLocale = const Locale('en');

  final _localeStream = StreamController<Locale?>.broadcast();

  Stream<Locale?> get localeStream => _localeStream.stream;

  setLocale(BuildContext context, Locale locale) {
    if (!config.supportedLocales.contains(locale)) {
      throw Exception('Locale not registered');
    }

    currentLocale = locale;
    _localeStream.add(locale);

    adapter.refresh(context, locale);
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
