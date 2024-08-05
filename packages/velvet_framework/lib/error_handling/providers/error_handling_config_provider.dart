import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/error_handling/contracts/error_handling_config_contract.dart';

part 'error_handling_config_provider.g.dart';

/// A provider that provides the configuration for error handling in the Velvet Framework.
///
/// This provider is used to configure how errors are handled within the framework.
/// The [errorHandlingConfig] function is the main entry point for obtaining the error handling configuration.
/// The configuration can be customized by providing an implementation of the [ErrorHandlingConfigContract] interface.
///
/// Example usage:
/// ```dart
/// Kernel()..bind(errorHandlingConfig, (_) => MyErrorHandlingConfig());
/// ```
///
/// or using the `@VelvetConfig` annotation:
/// ```dart
/// @VelvetConfig(provider: errorHandlingConfig)
/// class MyErrorHandlingConfig implements ErrorHandlingConfigContract {
///  // Configuration implementation
/// }
/// ```
@Riverpod(keepAlive: true)
ErrorHandlingConfigContract errorHandlingConfig(
  ErrorHandlingConfigRef ref,
) {
  throw UnimplementedError();
}
