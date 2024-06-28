import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/data_loader/data_loader.dart';
import 'package:velvet_framework/data_loader/views/data_loader_default_error_view.dart';

part 'data_loader_error_view_provider.g.dart';

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
@Riverpod()
DataLoaderErrorViewBuilder dataLoaderErrorView(
  DataLoaderErrorViewRef ref,
) {
  return (error, stackTrace) {
    return DataLoaderDefaultErrorView(error: error, stackTrace: stackTrace);
  };
}
