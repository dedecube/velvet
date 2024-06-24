import 'package:flutter/material.dart';
import 'package:velvet_framework/data_loader/data_loader.dart';
import 'package:velvet_framework/velvet_framework.dart';

/// A base class for creating pages that load data using a [DataLoader].
///
/// This class is intended to be extended by concrete page classes that need to
/// load data using a [DataLoader]. It provides a convenient way to handle data
/// loading and error handling in a consistent manner.
///
/// Subclasses must implement the [build] method to define the UI of the page.
/// The [build] method will receive a [BuildContext] and a [WidgetRef] as
/// parameters, which can be used to access the current context and the widget
/// reference respectively.
///
/// Example usage:
///
/// ```dart
/// class PostListPage extends DataLoaderPage<MyData> {
///   const MyDataLoaderPage({Key? key}) : super(key: key);
///
///   @override
///   DataLoader<MyData> build(BuildContext context, WidgetRef ref) {
///     return DataLoader<MyData>(
///       dataHandler: (ref) => ref.watch(userListProvider),
///       dataBuilder: (data) => PostListSuccessView(data: data),
///       loadingBuilder: () => PostLoadingView(),
///       errorBuilder: (error, stackTrace) => PostErrorView(error: error),
///     );
///   }
/// }
/// ```
abstract class DataLoaderPage<T> extends HookConsumerWidget {
  const DataLoaderPage({super.key});

  @override
  DataLoader<T> build(BuildContext context, WidgetRef ref);
}
