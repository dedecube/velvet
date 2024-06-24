part of 'data_loader.dart';

typedef DataLoaderSuccessViewBuilder<T> = DataLoaderSuccessView<T> Function(
  T data,
);

typedef DataLoaderErrorViewBuilder = DataLoaderErrorView Function(
  Object error,
  StackTrace stackTrack,
);

typedef DataLoaderLoadingViewBuilder = DataLoaderLoadingView Function();
