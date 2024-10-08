import 'package:velvet_framework/src/core/utils/env.dart';
import 'package:velvet_framework/src/form/contracts/form_config_contract.dart';
import 'package:velvet_framework/src/form/hooks/use_form/use_form.dart';
import 'package:velvet_framework/src/form/hooks/use_input/input_options.dart';
import 'package:velvet_framework/src/form/hooks/use_input/use_input.dart';

class DefaultFormConfig implements FormConfigContract {
  @override
  bool get shouldUsePrecompiledValuesEnabled =>
      envBool('FORM_PRECOMPILED_VALUES_ENABLED', false)!;

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
