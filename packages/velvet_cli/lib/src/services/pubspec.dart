import 'dart:io';

import 'package:path/path.dart';
import 'package:velvet_cli/velvet_cli.dart';
import 'package:yaml/yaml.dart';

class Pubspec {
  late String name;

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
  }
}
