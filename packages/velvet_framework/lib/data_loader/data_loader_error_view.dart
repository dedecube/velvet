import 'package:velvet_framework/velvet_framework.dart';

abstract class DataLoaderErrorView extends HookConsumerWidget {
  const DataLoaderErrorView({
    super.key,
    required this.error,
    required this.stackTrack,
  });

  final Object error;
  final StackTrace stackTrack;
}
