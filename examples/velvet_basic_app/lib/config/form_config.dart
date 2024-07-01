import 'package:velvet_framework/form/contracts/form_config_contract.dart';

class FormConfig extends FormConfigContract {
  @override
  Map<String, dynamic> get precompiledValues => {
        'name': 'Daniele Tulone',
        'email': 'daniele@dedecube.com',
      };
}
