import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/translation/providers/translation_config_provider.dart';
import 'package:velvet_framework/translation/providers/translator_adapter_provider.dart';
import 'package:velvet_framework/translation/translator.dart';

part 'translator_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [translatorAdapter, translationConfig])
Translator translator(TranslatorRef ref) {
  var adapter = ref.read(translatorAdapterProvider);
  var config = ref.read(translationConfigProvider);

  return Translator(config, adapter);
}
