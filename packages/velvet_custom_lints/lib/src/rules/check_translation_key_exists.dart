import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:velvet_custom_lints/src/helpers/json_loader.dart';
import 'package:yaml/yaml.dart';

class CheckTranslationKeyExists extends DartLintRule {
  CheckTranslationKeyExists(CustomLintConfigs configs, {super.code = _code}) {
    var yamlMap = configs.rules[_code.name]?.json['locales'] as YamlMap?;

    if (yamlMap != null) {
      _jsonFiles = yamlMap.map((key, value) {
        return MapEntry(key.toString(), List<String>.from(value));
      });
    } else {
      _jsonFiles = {
        'en': ['assets/translation/en.json'],
        'it': ['assets/translation/it.json'],
      };
    }
  }

  late final Map<String, List<String>> _jsonFiles;

  static const _code = LintCode(
    name: 'velvet_check_translation_key_does_exist',
    problemMessage: 'Translation key does not exist in the {0} json file.',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addMethodInvocation((node) {
      final methodName = node.methodName.name;

      if (methodName == 'translate' && node.target.toString() == 'context') {
        final projectPath =
            findProjectDirectory(Directory.fromUri(Uri.file(resolver.path)));

        for (final entry in _jsonFiles.entries) {
          _checkTranslationKeyExists(
            entry.key,
            entry.value,
            node,
            projectPath,
            reporter,
          );
        }
      }
    });
  }

  _checkTranslationKeyExists(
    String locale,
    List<String> jsonFiles,
    MethodInvocation node,
    Directory projectPath,
    ErrorReporter reporter,
  ) {
    final jsonLoader = JsonLoader(
      jsonFiles.map((file) {
        return '${projectPath.path}/$file';
      }).toList(),
    );
    final translationKeys = jsonLoader.loadAllKeys();

    final arguments = node.argumentList.arguments;

    if (arguments.isNotEmpty) {
      final key = arguments[0] as StringLiteral;

      if (!jsonLoader.containsKey(translationKeys, key.stringValue!)) {
        reporter.reportErrorForNode(code, node, [locale]);
      }
    }
  }
}
