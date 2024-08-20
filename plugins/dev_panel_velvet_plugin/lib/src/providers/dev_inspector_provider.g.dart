// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dev_inspector_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$devInspectorHash() => r'8faf1e38837321da2dad85a65ce890ff1a7867d8';

/// Provider for the [DevInspector].
///
/// This provider can be used to obtain an instance of [DevInspector] throughout the app.
///
/// If you want to provide a different implementation of [DevInspector], you can override this provider.
///
/// Copied from [devInspector].
@ProviderFor(devInspector)
final devInspectorProvider = Provider<DevInspector>.internal(
  devInspector,
  name: r'devInspectorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$devInspectorHash,
  dependencies: <ProviderOrFamily>[
    devInspectorAdapterProvider,
    devInspectorConfigProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    devInspectorAdapterProvider,
    ...?devInspectorAdapterProvider.allTransitiveDependencies,
    devInspectorConfigProvider,
    ...?devInspectorConfigProvider.allTransitiveDependencies
  },
);

typedef DevInspectorRef = ProviderRef<DevInspector>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
