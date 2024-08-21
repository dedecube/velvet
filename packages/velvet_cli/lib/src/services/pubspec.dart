import 'dart:io';

import 'package:path/path.dart';
import 'package:velvet_cli/velvet_cli.dart';
import 'package:yaml/yaml.dart';

class Pubspec {
  late String name;

  late Map dependencies;

  late Map devDependencies;

  Pubspec() {
    _init();
  }

  _init() {
    final pubspec = join('pubspec.yaml');

    if (!exists(pubspec)) {
      print(red('-' * 80));
      print(red('This command must be run in the root of a velvet project.'));
      print(red('-' * 80));
      exit(1);
    }

    final projectYaml = loadYaml(File(pubspec).readAsStringSync()) as YamlMap;

    if (!projectYaml.containsKey('name')) {
      print(red('-' * 80));
      print(red('This command must be run in the root of a velvet project.'));
      print(red('-' * 80));
      exit(1);
    }

    name = projectYaml['name'] as String;
    dependencies = (projectYaml['dependencies'] as YamlMap).value;
    devDependencies = (projectYaml['dev_dependencies'] as YamlMap).value;
  }

  /// Check if a package is installed in the project
  hasDependency(String packageName) {
    return dependencies.containsKey(packageName);
  }

  /// Check if a package is installed in the project as a dev dependency
  hasDevDependency(String packageName) {
    return devDependencies.containsKey(packageName);
  }
}
