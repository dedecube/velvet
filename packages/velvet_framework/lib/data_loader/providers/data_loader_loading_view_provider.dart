import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/data_loader/data_loader.dart';
import 'package:velvet_framework/data_loader/views/data_loader_default_loading_view.dart';

part 'data_loader_loading_view_provider.g.dart';

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
@Riverpod()
DataLoaderLoadingViewBuilder dataLoaderLoadingView(
  DataLoaderLoadingViewRef ref,
) {
  return () => const DataLoaderDefaultLoadingView();
}
