import 'package:velvet_framework/velvet_framework.dart';

class FormConfig extends DefaultFormConfig {
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
