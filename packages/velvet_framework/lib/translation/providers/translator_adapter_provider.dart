import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/translation/adapters/flutter_i18n_translator_adapter.dart';
import 'package:velvet_framework/translation/contracts/translator_adapter_contract.dart';
import 'package:velvet_framework/translation/providers/translation_config_provider.dart';

part 'translator_adapter_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [translationConfig])
TranslatorAdapterContract translatorAdapter(TranslatorAdapterRef ref) {
  var config = ref.read(translationConfigProvider);

  return FlutterI18nTranslationAdapter(config);
}
