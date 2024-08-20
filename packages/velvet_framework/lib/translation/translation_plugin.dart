import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/translation/config/default_translation_config.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';

class TranslationPlugin extends VelvetPlugin {
  @override
  void register() {
    registerConfig<TranslationConfigContract>(DefaultTranslationConfig());
  }
}
