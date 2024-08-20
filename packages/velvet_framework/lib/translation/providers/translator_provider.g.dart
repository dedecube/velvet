// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translatorHash() => r'98c14a9af4b17994dadd64cd5b99347bd1b25af4';

/// See also [translator].
@ProviderFor(translator)
final translatorProvider = Provider<Translator>.internal(
  translator,
  name: r'translatorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$translatorHash,
  dependencies: <ProviderOrFamily>[translatorAdapterProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    translatorAdapterProvider,
    ...?translatorAdapterProvider.allTransitiveDependencies
  },
);

typedef TranslatorRef = ProviderRef<Translator>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
