// **************************************************************************
// Export
// **************************************************************************
//
// In order to generate the file, run the following command:
// ```
// npx vscode-generate-index-standalone packages/velvet_framework/lib/
// ```

// @index(['./**/(*.dart)','!./**/*.g.dart', '!./**/_*.dart', '!./**/store.dart'], f => `export '${f.path}.dart';`)
export './talker_global_instance.dart';
// @endindex