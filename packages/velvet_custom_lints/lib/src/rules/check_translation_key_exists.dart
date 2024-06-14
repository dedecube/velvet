import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:yaml/yaml.dart';

class JsonLoader {
  JsonLoader(this.jsonFiles);

  final List<String> jsonFiles;

  final StreamController<void> _onChangeController = StreamController<void>();

  Stream<void> get onChange => _onChangeController.stream;

  Map<String, dynamic> _loadJsonFile(String filePath) {
    final file = File(filePath);

    if (!file.existsSync()) {
      return {};
    }

    final contents = file.readAsStringSync();

    return jsonDecode(contents);
  }

  Map<String, dynamic> loadAllKeys() {
    final Map<String, dynamic> allKeys = {};

    for (final filePath in jsonFiles) {
      final absolutePath = _resolvePath(filePath);
      final jsonMap = _loadJsonFile(absolutePath);
      allKeys.addAll(jsonMap);
    }

    return allKeys;
  }

  String _resolvePath(String relativePath) {
    return File(relativePath).absolute.path;
  }

  bool containsKey(Map<String, dynamic> jsonMap, String key) {
    final parts = key.split('.');
    var current = jsonMap;
    for (final part in parts) {
      if (current.containsKey(part)) {
        final value = current[part];
        if (value is Map<String, dynamic>) {
          current = value;
        } else if (value is String && part == parts.last) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    }
    return true;
  }
}

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

  @override
  List<String> get filesToAnalyze => const ['**.dart'];

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
        // ignore: deprecated_member_use
        reporter.reportErrorForNode(code, node, [locale]);
      }
    }
  }
}
