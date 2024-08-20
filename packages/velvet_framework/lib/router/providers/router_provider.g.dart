// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'7a5e6f20ff382d09addc2ca1bb8b67db98b3e6af';

/// See also [router].
@ProviderFor(router)
final routerProvider = FutureProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: <ProviderOrFamily>[routesProvider, routerErrorBuilderProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    routesProvider,
    ...?routesProvider.allTransitiveDependencies,
    routerErrorBuilderProvider,
    ...?routerErrorBuilderProvider.allTransitiveDependencies
  },
);

typedef RouterRef = FutureProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
