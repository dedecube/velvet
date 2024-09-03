import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/src/translation/contracts/translator_adapter_contract.dart';

abstract class TranslatorContract {
  TranslatorAdapterContract get adapter;
  TranslationConfigContract get config;

  late Locale currentLocale;

  Stream<Locale?> get localeStream;

  FutureOr<void> setLocale(BuildContext context, Locale locale);

  List<LocalizationsDelegate> delegates();

  List<Locale> get supportedLocales;

  String translate(
    BuildContext context,
    String key, {
    Map<String, String>? args,
  });
}
