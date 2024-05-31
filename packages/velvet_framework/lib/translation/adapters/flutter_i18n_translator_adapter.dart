import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:velvet_framework/talker/talker_global_instance.dart';
import 'package:velvet_framework/translation/contracts/translator_adapter_contract.dart';

class FlutterI18nTranslationAdapter extends TranslatorAdapterContract {
  FlutterI18nTranslationAdapter(super.config);

  @override
  get delegate {
    return FlutterI18nDelegate(
      translationLoader: FileTranslationLoader(
        useCountryCode: false,
        basePath: 'assets/flutter_i18n',
        fallbackFile: config.fallbackLocale.languageCode,
      ),
      missingTranslationHandler: (key, locale) {
        talkerGlobalInstance.warning('Missing key: $key');
      },
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
  Future<bool> refresh(BuildContext context, Locale locale) {
    return FlutterI18n.refresh(context, locale) as Future<bool>;
  }
}
