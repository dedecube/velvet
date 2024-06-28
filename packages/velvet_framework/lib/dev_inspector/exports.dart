// **************************************************************************
// Export
// **************************************************************************
//
// In order to generate the file, run the following command:
// ```
// npx vscode-generate-index-standalone packages/velvet_framework/lib/
// ```

// @index(['./**/(*.dart)','!./**/*.g.dart', '!./**/_*.dart'], f => `export '${f.path}.dart';`)
export './adapters/dev_inspector_talker_adapter.dart';
export './contracts/dev_inspector_adapter_contract.dart';
export './contracts/dev_inspector_config_contract.dart';
export './dev_inspector.dart';
export './providers/dev_inspector_adapter_provider.dart';
export './providers/dev_inspector_config_provider.dart';
export './providers/dev_inspector_provider.dart';
// @endindex
