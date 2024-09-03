import 'package:velvet_annotation/velvet_annotation.dart';

import 'package:velvet_framework/src/core/utils/config.dart';
import 'package:velvet_framework/src/translation/adapters/flutter_i18n_translator_adapter.dart';
import 'package:velvet_framework/src/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/src/translation/contracts/translator_adapter_contract.dart';

part 'translator_adapter_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
TranslatorAdapterContract translatorAdapter(TranslatorAdapterRef ref) {
  return FlutterI18nTranslatorAdapter(config<TranslationConfigContract>());
}
