import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

@VelvetConfig(provider: formConfig)
class FormConfig extends FormConfigContract {
  @override
  Map<String, dynamic> get precompiledValues => {
        'name': 'Daniele Tulone',
        'email': 'daniele@dedecube.com',
      };

  @override
  InputOptions get defaultInputOptions => InputOptions(
        shouldValidateOnChange: false,
        shouldValidateOnFocusLost: false,
        shouldClearErrorOnFocus: false,
        shouldClearErrorOnChange: true,
        shouldTrim: false,
      );
}
