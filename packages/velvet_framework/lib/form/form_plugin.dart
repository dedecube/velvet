import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/core/utils/config_manager.dart';
import 'package:velvet_framework/form/config/default_form_config.dart';
import 'package:velvet_framework/form/contracts/form_config_contract.dart';

class FormPlugin extends VelvetPlugin {
  @override
  void register() {
    configManager().register<FormConfigContract>(
      DefaultFormConfig(),
    );
  }
}
