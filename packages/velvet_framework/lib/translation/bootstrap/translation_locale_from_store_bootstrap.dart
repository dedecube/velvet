import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/store/providers/store_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';
import 'package:velvet_framework/translation/storables/locale_storable.dart';

part 'translation_locale_from_store_bootstrap.g.dart';

/// Try to get the locale from the store and set it to the translator.
/// If no locale is stored, the default behavior will be used.
@Riverpod(keepAlive: true, dependencies: [translator, store])
Future<void> translationLocaleFromStoreBootstrap(
  TranslationLocaleFromStoreBootstrapRef ref,
) async {
  final translator = ref.watch(translatorProvider);
  final storeInstance = ref.read(storeProvider);

  final locale =
      await LocaleStorable().usingStore(storeInstance.requireValue).get();

  translator.currentLocale = Locale(locale);
}
