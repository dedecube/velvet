import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/data_loader/data_loader.dart';
import 'package:velvet_framework/data_loader/views/data_loader_default_loading_view.dart';

part 'data_loader_loading_view_provider.g.dart';

@Riverpod()
DataLoaderLoadingViewBuilder dataLoaderLoadingView(
  DataLoaderLoadingViewRef ref,
) {
  return () => const DataLoaderDefaultLoadingView();
}
