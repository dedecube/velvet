import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/utils.dart';
import 'package:velvet_framework/translation/adapters/flutter_i18n_translator_adapter.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/translation/contracts/translator_adapter_contract.dart';

part 'translator_adapter_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
TranslatorAdapterContract translatorAdapter(TranslatorAdapterRef ref) {
  return FlutterI18nTranslatorAdapter(config<TranslationConfigContract>());
}
