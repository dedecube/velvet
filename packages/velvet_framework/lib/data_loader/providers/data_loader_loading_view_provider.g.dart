// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_loader_loading_view_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataLoaderLoadingViewHash() =>
    r'0d987f339d75e854b0641571069c7912259889b0';

/// Provider for the default loading view of the data loader.
///
/// This provider returns a [DataLoaderLoadingViewBuilder] that builds the default loading view for the data loader.
/// The default loading view is an instance of [DataLoaderDefaultLoadingView] that displays a loading indicator.
///
/// To override the default loading view, you can use the `ProviderContainer`'s `override` method in your `main.dart` file.
/// Here's an example of how to override the default loading view using `Kernel`:
///
/// ```dart
/// void main() {
///   Kernel.bind(dataLoaderLoadingView, (ref) => () {
///     return CustomLoadingView();
///   });
/// }
/// ```
///
/// Copied from [dataLoaderLoadingView].
@ProviderFor(dataLoaderLoadingView)
final dataLoaderLoadingViewProvider =
    AutoDisposeProvider<DataLoaderLoadingViewBuilder>.internal(
  dataLoaderLoadingView,
  name: r'dataLoaderLoadingViewProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dataLoaderLoadingViewHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DataLoaderLoadingViewRef
    = AutoDisposeProviderRef<DataLoaderLoadingViewBuilder>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
