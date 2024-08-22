// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kernel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$kernelInitializationHash() =>
    r'8dd3a966a0ec1e42b182ae4798e387b388daaa7f';

/// The kernel provider is the responsible for initializing the application and its dependencies.
/// It is responsible for initializing the application and its dependencies.
/// Internally, it initializes the store, the router, the translator, and the kernel bootstrap providers.
///
/// See https://codewithandrea.com/articles/robust-app-initialization-riverpod/
///
/// Copied from [kernelInitialization].
@ProviderFor(kernelInitialization)
final kernelInitializationProvider = FutureProvider<void>.internal(
  kernelInitialization,
  name: r'kernelInitializationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$kernelInitializationHash,
  dependencies: <ProviderOrFamily>[
    storeProvider,
    routerProvider,
    translatorProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeProvider,
    ...?storeProvider.allTransitiveDependencies,
    routerProvider,
    ...?routerProvider.allTransitiveDependencies,
    translatorProvider,
    ...?translatorProvider.allTransitiveDependencies
  },
);

typedef KernelInitializationRef = FutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
