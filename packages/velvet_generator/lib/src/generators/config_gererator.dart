import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart' show BuildStep;
import 'package:merging_builder/merging_builder.dart';
import 'package:source_gen/source_gen.dart' show ConstantReader;
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_support/velvet_support.dart';

class ConfigAutoloaderGenerator
    extends MergingGenerator<List<String>, VelvetConfig> {
  static String get header {
    return '// Autoloaded config providers.';
  }

  static String get footer {
    return '// End of autoloaded config providers.';
  }

  @override
  List<String> generateStreamItemForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final result = <String>[];

    if (element is FunctionElement) {
      final functionName = element.name;

      result.add(functionName);

      return result;
    }

    return <String>['Could not found any function'];
  }

  @override
  FutureOr<String> generateMergedContent(Stream<List<String>> stream) async {
    final b = StringBuffer();
    final allConfig = <List<String>>[];

    b.writeln('import \'dart:async\';');
    b.writeln('import \'package:flutter_riverpod/flutter_riverpod.dart\';');

    await for (final names in stream) {
      for (var name in names) {
        var fileName = Str.snake(name);

        b.writeln('import \'./config/$fileName.dart\';');
      }

      allConfig.add(names);
    }

    b.writeln('typedef ConfigCreate<T, R extends Ref> = T Function(R ref);');
    b.writeln('');
    b.writeln(
      'final List<ConfigCreate<dynamic, ProviderRef>> configProviders = [',
    );

    for (var names in allConfig) {
      for (var name in names) {
        b.writeln('  $name,');
      }
    }

    b.writeln('];');

    return b.toString();
  }
}
