// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kernel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$kernelHash() => r'896ccc7ddbdc3db87eac281c1631a674d6d13496';

/// The kernel provider is the responsible for initializing the application and its dependencies.
/// It is responsible for initializing the application and its dependencies.
/// Internally, it initializes the store, the router, the translator, and the kernel bootstrap providers.
///
/// See https://codewithandrea.com/articles/robust-app-initialization-riverpod/
///
/// Copied from [kernel].
@ProviderFor(kernel)
final kernelProvider = FutureProvider<void>.internal(
  kernel,
  name: r'kernelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$kernelHash,
  dependencies: <ProviderOrFamily>{
    storeProvider,
    routerProvider,
    translatorProvider,
    kernelBootstrapProvider,
    eventBusProvider
  },
  allTransitiveDependencies: <ProviderOrFamily>{
    storeProvider,
    ...?storeProvider.allTransitiveDependencies,
    routerProvider,
    ...?routerProvider.allTransitiveDependencies,
    translatorProvider,
    ...?translatorProvider.allTransitiveDependencies,
    kernelBootstrapProvider,
    ...?kernelBootstrapProvider.allTransitiveDependencies,
    eventBusProvider,
    ...?eventBusProvider.allTransitiveDependencies
  },
);

typedef KernelRef = FutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
