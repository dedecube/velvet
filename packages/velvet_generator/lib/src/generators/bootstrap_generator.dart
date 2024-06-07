import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart' show BuildStep;
import 'package:merging_builder/merging_builder.dart';
import 'package:source_gen/source_gen.dart' show ConstantReader;
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_support/velvet_support.dart';

/// Reads a field element of type [List<String] and generates the merged content.
class BootstrapAutoloaderGenerator
    extends MergingGenerator<List<String>, VelvetBootstrap> {
  static String get header {
    return '// Autoloaded bootstrap functions.';
  }

  static String get footer {
    return '// End of autoloaded bootstrap functions';
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
    final allBootstrap = <List<String>>[];

    b.writeln('import \'dart:async\';');
    b.writeln('// ignore: depend_on_referenced_packages');
    b.writeln('import \'package:riverpod/riverpod.dart\';');

    await for (final names in stream) {
      for (var name in names) {
        var fileName = Str.snake(name);

        b.writeln('import \'./bootstrap/$fileName.dart\';');
      }

      allBootstrap.add(names);
    }

    b.writeln('typedef BootstrapCreate<T, R extends Ref> = T Function(R ref);');
    b.writeln('');
    b.writeln(
      'final List<BootstrapCreate<FutureOr, FutureProviderRef>> bootstrapFunctions = [',
    );

    for (var names in allBootstrap) {
      for (var name in names) {
        b.writeln('  $name,');
      }
    }

    b.writeln('];');

    return b.toString();
  }
}
