import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'package:velvet_framework/src/translation/contracts/translator_adapter_contract.dart';

class FlutterI18nTranslatorAdapter extends TranslatorAdapterContract {
  FlutterI18nTranslatorAdapter(super.config);

  @override
  LocalizationsDelegate get delegate {
    return FlutterI18nDelegate(
      translationLoader: FileTranslationLoader(
        useCountryCode: false,
        basePath: 'assets/translation',
        fallbackFile: config.fallbackLocale.languageCode,
      ),
    );
  }

  @override
  String translate(
    BuildContext context,
    String key,
    Map<String, String>? args,
  ) {
    return FlutterI18n.translate(context, key, translationParams: args);
  }

  @override
  Future<bool> refresh(BuildContext context, Locale locale) async {
    await FlutterI18n.refresh(context, locale);

    return true;
  }
}
