import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/data_loader/data_loader_error_view.dart';
import 'package:velvet_framework/data_loader/data_loader_loading_view.dart';
import 'package:velvet_framework/data_loader/data_loader_success_view.dart';
import 'package:velvet_framework/data_loader/providers/data_loader_error_view_provider.dart';
import 'package:velvet_framework/data_loader/providers/data_loader_loading_view_provider.dart';

part '_data_loader_builder_types.dart';

/// A widget that handles loading, error, and data states for asynchronous data.
///
/// The [DataLoader] widget is designed to simplify the handling of asynchronous data
/// in Velvet applications. It provides a convenient way to display loading indicators,
/// error messages, and data views based on the state of the asynchronous data.
///
/// The [DataLoader] widget requires a [dataHandler] function that returns an [AsyncValue]
/// representing the asynchronous data. The [dataBuilder], [loadingBuilder], and [errorBuilder]
/// parameters allow you to customize the UI for each state.
///
/// Example usage:
///
/// ```dart
/// DataLoader<User>(
///   dataHandler: (ref) => ref.watch(userProvider),
///   dataBuilder: (user) => UserView(user: user),
///   loadingBuilder: () => LoadingView(),
///   errorBuilder: (error, stackTrace) => ErrorView(error: error),
/// )
/// ```
class DataLoader<T> extends HookConsumerWidget {
  const DataLoader({
    super.key,
    required this.dataHandler,
    required this.dataBuilder,
    this.loadingBuilder,
    this.errorBuilder,
  });

  /// A function that returns an [AsyncValue] representing the asynchronous data.
  ///
  /// The [dataHandler] function is called whenever the [DataLoader] widget is rebuilt.
  /// It should return an [AsyncValue] that represents the current state of the asynchronous data.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final userProvider = FutureProvider<User>((ref) async {
  ///   final response = await apiHttp.request(UserShowRequest());
  ///
  ///   return response.toObject();
  /// });
  ///
  /// DataLoader<User>(
  ///   dataHandler: (ref) => ref.watch(userProvider),
  ///   dataBuilder: (user) => UserSuccessView(user: user),
  /// )
  /// ```
  final AsyncValue<T> Function(WidgetRef ref) dataHandler;

  /// A builder function that creates the UI for the data state.
  ///
  /// The [dataBuilder] function is called when the asynchronous data is available.
  /// It receives the data as a parameter and should return a widget that represents
  /// the UI for the data state.
  final DataLoaderSuccessViewBuilder<T> dataBuilder;

  /// A builder function that creates the UI for the loading state.
  ///
  /// The [loadingBuilder] function is called when the asynchronous data is still loading.
  /// If not provided, a default loading indicator will be displayed.
  final DataLoaderLoadingViewBuilder? loadingBuilder;

  /// A builder function that creates the UI for the error state.
  ///
  /// The [errorBuilder] function is called when an error occurs while loading the data.
  /// It receives the error and stack trace as parameters and should return a widget that
  /// represents the UI for the error state. If not provided, a default error view will be displayed.
  final DataLoaderErrorViewBuilder? errorBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resource = dataHandler(ref);

    return resource.when(
      data: dataBuilder,
      error: errorBuilder ?? ref.read(dataLoaderErrorViewProvider),
      loading: loadingBuilder ?? ref.read(dataLoaderLoadingViewProvider),
    );
  }
}
