import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/translation/translation_config.dart';

part 'translation_config_provider.g.dart';

@Riverpod(dependencies: [])
TranslationConfigContract translationConfig(TranslationConfigRef ref) {
  return TranslationConfig();
}
