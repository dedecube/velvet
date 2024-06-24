import 'package:velvet_framework/velvet_framework.dart';

/// A widget that represents the view when data is successfully loaded by a [DataLoader].
///
/// This widget is intended to be used as a base class for creating custom success views.
/// It provides a [data] property to access the loaded data.
abstract class DataLoaderSuccessView<T> extends HookConsumerWidget {
  const DataLoaderSuccessView({
    super.key,
    required this.data,
  });

  /// The loaded data.
  final T data;
}
