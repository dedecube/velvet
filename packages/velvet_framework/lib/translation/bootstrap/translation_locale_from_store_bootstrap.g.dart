// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_locale_from_store_bootstrap.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translationLocaleFromStoreBootstrapHash() =>
    r'f0d3a41e3282d8b4cbf4528a5e70854897376e25';

/// Sets the translation locale from the store to the translator.
///
/// This function tries to retrieve the locale from the store and sets it as the current locale for the translator.
/// If no locale is stored, the default behavior will be used.
///
/// Copied from [translationLocaleFromStoreBootstrap].
@ProviderFor(translationLocaleFromStoreBootstrap)
final translationLocaleFromStoreBootstrapProvider =
    FutureProvider<void>.internal(
  translationLocaleFromStoreBootstrap,
  name: r'translationLocaleFromStoreBootstrapProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$translationLocaleFromStoreBootstrapHash,
  dependencies: <ProviderOrFamily>[translatorProvider, storeProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    translatorProvider,
    ...?translatorProvider.allTransitiveDependencies,
    storeProvider,
    ...?storeProvider.allTransitiveDependencies
  },
);

typedef TranslationLocaleFromStoreBootstrapRef = FutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
