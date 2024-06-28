// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_loader_error_view_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataLoaderErrorViewHash() =>
    r'4e09c25649ead5e14f98611b97be0112cc28a2f5';

/// Provider for the default error view of the data loader.
///
/// This provider returns a [DataLoaderErrorViewBuilder] that builds the default error view for the data loader.
/// The default error view is an instance of [DataLoaderDefaultErrorView] that displays the error message and stack trace.
///
/// To override the default error view, you can use the `ProviderContainer`'s `override` method in your `main.dart` file.
/// Here's an example of how to override the default error view using `Kernel`:
///
/// ```dart
/// void main() {
///   Kernel.bind(dataLoaderErrorView, (ref) => (error, stackTrace) {
///     return CustomErrorView(error: error, stackTrace: stackTrace);
///   });
/// }
/// ```
///
/// Copied from [dataLoaderErrorView].
@ProviderFor(dataLoaderErrorView)
final dataLoaderErrorViewProvider =
    AutoDisposeProvider<DataLoaderErrorViewBuilder>.internal(
  dataLoaderErrorView,
  name: r'dataLoaderErrorViewProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dataLoaderErrorViewHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DataLoaderErrorViewRef
    = AutoDisposeProviderRef<DataLoaderErrorViewBuilder>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
