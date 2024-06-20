import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:velvet_generator/src/generators/autoloader_generator.dart';

Builder autoloaderBuilder(BuilderOptions options) {
  return LibraryBuilder(
    AutoloaderGenerator(),
    generatedExtension: '.velvet.dart',
  );
}
