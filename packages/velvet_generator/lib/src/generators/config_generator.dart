import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart' show BuildStep;
import 'package:merging_builder/merging_builder.dart';
import 'package:source_gen/source_gen.dart' show ConstantReader;
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_support/velvet_support.dart';

part '_config_value.dart';

class ConfigAutoloaderGenerator
    extends MergingGenerator<List<ConfigValue>, VelvetConfig> {
  static String get header {
    return '// Autoloaded config providers.';
  }

  static String get footer {
    return '// End of autoloaded config providers.';
  }

  @override
  List<ConfigValue> generateStreamItemForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final result = <ConfigValue>[];

    if (element is ClassElement) {
      final annotationProvider = annotation.read('provider');

      final importPath = annotationProvider.revive().source.path;

      result.add(
        ConfigValue(
          name: element.name,
          import: importPath,
        ),
      );

      return result;
    }

    return [];
  }

  @override
  FutureOr<String> generateMergedContent(
    Stream<List<ConfigValue>> stream,
  ) async {
    final b = StringBuffer();
    final allConfig = <List<ConfigValue>>[];

    b.writeln('import \'package:velvet_annotation/velvet_annotation.dart\';');

    await for (final streamItem in stream) {
      for (var config in streamItem) {
        var fileName = Str.snake(config.name);
        var import = 'package:${config.import.replaceAll('/lib', '')}';

        b.writeln('import \'./config/$fileName.dart\';');
        b.writeln('import \'$import\';');
      }

      allConfig.add(streamItem);
    }

    b.writeln('');
    b.writeln(
      'final List<ConfigBinder> configProviders = [',
    );

    for (var names in allConfig) {
      for (var name in names) {
        var provider = Str.of(name.import)
            .afterLast('/')
            .before('.dart')
            .camel()
            .toString();

        var configClassName = name.name;

        b.writeln(
          'ConfigBinder(',
        );
        b.writeln('  abstract: $provider,');
        b.writeln('  concrete: (ref) => $configClassName(),');
        b.writeln('),');
      }
    }

    b.writeln('];');

    return b.toString();
  }
}
