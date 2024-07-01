import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class DataLoaderErrorView extends HookConsumerWidget {
  const DataLoaderErrorView({
    super.key,
    required this.error,
    required this.stackTrace,
  });

  final Object error;
  final StackTrace stackTrace;
}
