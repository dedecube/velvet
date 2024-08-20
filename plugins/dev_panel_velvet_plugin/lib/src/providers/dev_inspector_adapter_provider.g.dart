// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dev_inspector_adapter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$devInspectorAdapterHash() =>
    r'8dcb0e27d658f0d2e36eb5457a416ad6b95ad04e';

/// Provider for the [DevInspectorAdapterContract].
///
/// This provider can be used to obtain an instance of [DevInspectorAdapterContract].
///
/// If you want to provide a different implementation of [DevInspectorAdapterContract],
/// you can override this provider.
///
/// Example:
/// ```
/// void main() {
///   runApp(
///     ProviderScope(
///       overrides: [
///         devInspectorAdapter.overrideWithValue(DevInspectorAdapterTalker()),
///       ],
///       child: MyApp(),
///     ),
///   );
/// }
/// ```
/// FIXME[epic=get-it] - Convert to get_it
///
/// Copied from [devInspectorAdapter].
@ProviderFor(devInspectorAdapter)
final devInspectorAdapterProvider =
    AutoDisposeProvider<DevInspectorAdapterContract>.internal(
  devInspectorAdapter,
  name: r'devInspectorAdapterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$devInspectorAdapterHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef DevInspectorAdapterRef
    = AutoDisposeProviderRef<DevInspectorAdapterContract>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
