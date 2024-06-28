import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/store/providers/store_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';
import 'package:velvet_framework/translation/storables/locale_storable.dart';

part 'translation_locale_from_store_bootstrap.g.dart';

/// Sets the translation locale from the store to the translator.
///
/// This function tries to retrieve the locale from the store and sets it as the current locale for the translator.
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
