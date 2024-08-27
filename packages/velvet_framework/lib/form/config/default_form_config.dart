import 'package:velvet_framework/form/contracts/form_config_contract.dart';
import 'package:velvet_framework/form/hooks/use_form/use_form.dart';
import 'package:velvet_framework/form/hooks/use_input/input_options.dart';
import 'package:velvet_framework/form/hooks/use_input/use_input.dart';

class DefaultFormConfig implements FormConfigContract {
  @override
  Map<String, dynamic> get precompiledValues => {};

  @override
  InputOptions get defaultInputOptions => InputOptions();

  @override
  InputOnFailureFactory get defaultInputOnFailureFactory =>
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
  FormOnFailure? get defaultFormOnFailure => null;
}
