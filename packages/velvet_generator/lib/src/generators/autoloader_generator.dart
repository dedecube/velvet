import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:source_gen/source_gen.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

class AutoloaderGenerator extends GeneratorForAnnotation<VelvetAutoloader> {
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    var imports = <String>[];
    var classNames = <String>[];

    DartType? type;

    var glob = annotation.read('glob').stringValue;

    if (annotation.read('type').isType) {
      type = annotation.read('type').typeValue;
    }

    await for (final input in buildStep.findAssets(Glob(glob))) {
      final library = await buildStep.resolver.libraryFor(input);

      if (type != null) {
        var classesInLibrary =
            LibraryReader(library).allElements.whereType<ClassElement>().where(
                  (c) => c.allSupertypes.any((t) => type!.element == t.element),
                );

        if (classesInLibrary.isNotEmpty) {
          classNames.addAll(classesInLibrary.map((c) => c.name));
          imports.add("import '${input.uri}';");
        }
      } else {
        var classesInLibrary =
            LibraryReader(library).allElements.whereType<ClassElement>();

        if (classesInLibrary.isNotEmpty) {
          classNames.addAll(classesInLibrary.map((c) => c.name));
          imports.add("import '${input.uri}';");
        }
      }
    }

    // Add import of the type of annotation
    if (type != null) {
      imports.add("import '${type.element!.source!.uri}';");
    }

    return '''
${imports.join('\n')}

List<${type != null ? type.toString() : 'dynamic'}> \$${element.name}Items = [
    ${classNames.map((c) => '$c()').join(',\n')}
  ];
''';
  }
}
