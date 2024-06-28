// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kernel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$kernelHash() => r'4b122135c1c7da6afee36d3634c49f740ec3e0be';

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
    kernelBootstrapProvider
  },
  allTransitiveDependencies: <ProviderOrFamily>{
    storeProvider,
    ...?storeProvider.allTransitiveDependencies,
    routerProvider,
    ...?routerProvider.allTransitiveDependencies,
    translatorProvider,
    ...?translatorProvider.allTransitiveDependencies,
    kernelBootstrapProvider,
    ...?kernelBootstrapProvider.allTransitiveDependencies
  },
);

typedef KernelRef = FutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
