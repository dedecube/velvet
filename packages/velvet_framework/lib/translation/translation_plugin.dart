import 'package:flutter/widgets.dart';
import 'package:velvet_framework/core/event/utils/event.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/core/utils/config.dart';
import 'package:velvet_framework/core/utils/config_manager.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/translation/adapters/flutter_i18n_translator_adapter.dart';
import 'package:velvet_framework/translation/config/default_translation_config.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/translation/contracts/translator_adapter_contract.dart';
import 'package:velvet_framework/translation/contracts/translator_contract.dart';
import 'package:velvet_framework/translation/events/locale_loaded_from_store.dart';
import 'package:velvet_framework/translation/storables/locale_storable.dart';
import 'package:velvet_framework/translation/translator.dart';

class TranslationPlugin extends VelvetPlugin {
  @override
  void register() {
    configManager().register<TranslationConfigContract>(
      DefaultTranslationConfig(),
    );

    container.registerLazySingleton<TranslatorAdapterContract>(
      () => FlutterI18nTranslatorAdapter(config<TranslationConfigContract>()),
    );

    container.registerLazySingleton<TranslatorContract>(
      () => Translator(
        config<TranslationConfigContract>(),
        container.get<TranslatorAdapterContract>(),
      ),
    );
  }

  @override
  Future<void> boot() async {
    await _loadLocaleFromStore();
  }

  Future<void> _loadLocaleFromStore() async {
    final translator = container.get<TranslatorContract>();
    final localeStorable = LocaleStorable();

    final locale = await localeStorable.get();

    if (locale == null) {
      return;
    }

    translator.currentLocale = Locale(locale);

    event(LocaleLoadedFromStore(Locale(locale)));
  }
}
