// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'2fa9f7108941c013f24846e1a730c5350c1dc515';

/// See also [router].
@ProviderFor(router)
final routerProvider = FutureProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: <ProviderOrFamily>[routerErrorBuilderProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    routerErrorBuilderProvider,
    ...?routerErrorBuilderProvider.allTransitiveDependencies
  },
);

typedef RouterRef = FutureProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
