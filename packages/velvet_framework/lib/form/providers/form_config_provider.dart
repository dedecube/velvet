import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/form/contracts/form_config_contract.dart';

part 'form_config_provider.g.dart';

/// Provides the form configuration for the Velvet Framework.
///
/// Example usage:
/// ```dart
/// Kernel()..bind(formConfig, (_) => MyFormConfig());
/// ```
///
/// or using the `@VelvetConfig` annotation:
/// ```dart
/// @VelvetConfig(provider: formConfig)
/// class MyFormConfig implements FormConfigContract {
///   // Configuration implementation
/// }
/// ```
@Riverpod(keepAlive: true)
FormConfigContract formConfig(
  FormConfigRef ref,
) {
  throw UnimplementedError();
}
