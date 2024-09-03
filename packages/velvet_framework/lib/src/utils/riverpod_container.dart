import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:velvet_framework/src/core/utils/kernel.dart';

/// Returns a [ProviderContainer] instance.
///
/// This function returns the [ProviderContainer] instance, which is used to manage the state and dependencies in the Velvet Framework.
///
/// Example usage:
/// ```dart
/// ProviderContainer container = riverpodContainer();
/// ```
ProviderContainer riverpodContainer() {
  final riverpodContainer = kernel().riverpodContainer;

  if (riverpodContainer == null) {
    throw Exception(
      [
        'Kernel is not running',
        'Please run the kernel before accessing the container.',
        'Consider to wrap your logic in a Kernel.use() combined with boot, then run the kernel.',
      ].join('\n'),
    );
  }

  return riverpodContainer;
}
