import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:velvet_custom_lints/src/rules/one_class_per_file.dart';

// Entrypoint of plugin
PluginBase createPlugin() => _VelvetCustomLints();

// The class listing all the [LintRule]s and [Assist]s defined by our plugin
class _VelvetCustomLints extends PluginBase {
  // Lint rules
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        const OneClassPerFile(),
      ];

  // Assists
  @override
  List<Assist> getAssists() => [];
}
