import 'package:velvet_annotation/velvet_annotation.dart';

import 'package:velvet_framework/src/core/utils/config.dart';
import 'package:velvet_framework/src/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/src/translation/translator.dart';
import 'package:velvet_framework/src/translation/providers/translator_adapter_provider.dart';

part 'translator_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [translatorAdapter])
Translator translator(TranslatorRef ref) {
  var adapter = ref.read(translatorAdapterProvider);

  return Translator(config<TranslationConfigContract>(), adapter);
}
