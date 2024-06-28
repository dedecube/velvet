// **************************************************************************
// Export
// **************************************************************************
//
// In order to generate the file, run the following command:
// ```
// npx vscode-generate-index-standalone packages/velvet_framework/lib/
// ```

// @index(['./**/(*.dart)','!./**/*.g.dart', '!./**/_*.dart'], f => `export '${f.path}.dart';`)
export './adapters/flutter_i18n_translator_adapter.dart';
export './bootstrap/translation_locale_from_store_bootstrap.dart';
export './contracts/translation_config_contract.dart';
export './contracts/translator_adapter_contract.dart';
export './exceptions/locale_not_available_exception.dart';
export './extensions/translator_extension.dart';
export './hooks/use_locale_switcher.dart';
export './providers/translation_config_provider.dart';
export './providers/translator_adapter_provider.dart';
export './providers/translator_provider.dart';
export './storables/locale_storable.dart';
export './translate.dart';
export './translator.dart';
// @endindex