import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/utils/kernel_context.dart';

/// Returns a [ProviderContainer] instance.
///
/// This function creates and returns a [ProviderContainer] instance, which is used to manage the state and dependencies in the Velvet Framework.
/// It initializes the container with the [kernelContext], which provides the necessary configuration for the framework.
///
/// Example usage:
/// ```dart
/// ProviderContainer container = container();
/// ```
ProviderContainer container() {
  return ProviderScope.containerOf(kernelContext());
}
