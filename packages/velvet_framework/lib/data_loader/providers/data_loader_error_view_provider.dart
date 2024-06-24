import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/data_loader/data_loader.dart';
import 'package:velvet_framework/data_loader/views/data_loader_default_error_view.dart';

part 'data_loader_error_view_provider.g.dart';

@Riverpod()
DataLoaderErrorViewBuilder dataLoaderErrorView(
  DataLoaderErrorViewRef ref,
) {
  return (error, stackTrack) {
    return DataLoaderDefaultErrorView(error: error, stackTrack: stackTrack);
  };
}
