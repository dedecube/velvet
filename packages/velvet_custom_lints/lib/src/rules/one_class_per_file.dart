import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class OneClassPerFile extends DartLintRule {
  const OneClassPerFile() : super(code: _code);

  static const _code = LintCode(
    name: 'velvet_one_class_per_file',
    problemMessage: 'Only one class allowed per file',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    int classCount = 0;

    context.registry.addClassDeclaration((node) {
      final element = node.declaredElement;

      if (element == null) {
        return;
      }

      classCount++;

      if (classCount > 1) {
        reporter.reportErrorForElement(code, element);
      }
    });
  }
}
