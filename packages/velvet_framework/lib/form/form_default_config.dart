import 'package:velvet_framework/error_handling/types.dart';
import 'package:velvet_framework/form/contracts/form_config_contract.dart';
import 'package:velvet_framework/form/hooks/use_input/input_options.dart';
import 'package:velvet_framework/form/hooks/use_input/use_input.dart';

class FormDefaultConfig implements FormConfigContract {
  @override
  Map<String, dynamic> get precompiledValues => {};

  @override
  InputOptions get defaultInputOptions => InputOptions();

  @override
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

  @override
  ExceptionMatcher? get defaultFormExceptionMatcher => null;
}
