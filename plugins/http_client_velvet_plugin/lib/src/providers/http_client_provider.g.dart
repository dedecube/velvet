// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpClientHash() => r'485d1c91bdba6e45991b92ab8366e840a5e4cd18';

/// See also [httpClient].
@ProviderFor(httpClient)
final httpClientProvider = Provider<Http>.internal(
  httpClient,
  name: r'httpClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$httpClientHash,
  dependencies: <ProviderOrFamily>[httpClientConfigProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    httpClientConfigProvider,
    ...?httpClientConfigProvider.allTransitiveDependencies
  },
);

typedef HttpClientRef = ProviderRef<Http>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
