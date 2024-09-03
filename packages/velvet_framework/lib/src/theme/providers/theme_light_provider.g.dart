// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_light_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeLightHash() => r'1e91c066daeb766746d2040a518fd62ea8505086';

/// See also [themeLight].
@ProviderFor(themeLight)
final themeLightProvider = Provider<ThemeDefinition>.internal(
  themeLight,
  name: r'themeLightProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeLightHash,
  dependencies: <ProviderOrFamily>[wireframeLightProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    wireframeLightProvider,
    ...?wireframeLightProvider.allTransitiveDependencies
  },
);

typedef ThemeLightRef = ProviderRef<ThemeDefinition>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
