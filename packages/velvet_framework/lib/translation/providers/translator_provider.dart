import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/utils/config.dart';
import 'package:velvet_framework/translation/contracts/translation_config_contract.dart';
import 'package:velvet_framework/translation/providers/translator_adapter_provider.dart';
import 'package:velvet_framework/translation/translator.dart';

part 'translator_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [translatorAdapter])
Translator translator(TranslatorRef ref) {
  var adapter = ref.read(translatorAdapterProvider);

  return Translator(config<TranslationConfigContract>(), adapter);
}
