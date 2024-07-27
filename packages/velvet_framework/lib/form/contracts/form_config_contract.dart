import 'package:velvet_framework/error_handling/types.dart';
import 'package:velvet_framework/form/hooks/use_input_state/input_options.dart';
import 'package:velvet_framework/form/hooks/use_input_state/use_input.dart';

/// The contract for a form configuration.
///
/// This contract defines the structure of a form configuration and provides
/// a method to retrieve the default values for the form fields.
abstract class FormConfigContract {
  /// Retrieves the default values for the form fields.
  /// Useful for initializing the form fields with default values on debug mode.
  Map<String, dynamic> get precompiledValues => {};

  /// Retrieves the default input options for the form fields.
  InputOptions get defaultInputOptions => InputOptions();

  ExceptionMatcherFactory get defaultInputExceptionMatcherFactory =>
      (exceptionToMessageResolverFactories, error) {
        return (exception) {
          for (final exceptionToMessageResolverFactory
              in exceptionToMessageResolverFactories) {
            final resolver = exceptionToMessageResolverFactory();
            final message = resolver.resolve(exception);

            error.value = message;

            if (message != null) {
              break;
            }
          }
        };
      };

  ExceptionMatcher? get defaultFormExceptionMatcher => null;
}
