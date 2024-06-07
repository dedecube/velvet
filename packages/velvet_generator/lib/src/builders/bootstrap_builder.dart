import 'package:build/build.dart';
import 'package:merging_builder/merging_builder.dart';
import 'package:velvet_generator/src/generators/bootstrap_generator.dart';

Builder bootstrapAutoloaderBuilder(BuilderOptions options) {
  final defaultOptions = BuilderOptions({
    'input_files': 'lib/bootstrap/*.dart',
    'output_file': 'lib/bootstrap.velvet.dart',
    'header': BootstrapAutoloaderGenerator.header,
    'footer': BootstrapAutoloaderGenerator.footer,
    'sort_assets': true,
  });

  options = defaultOptions.overrideWith(options);

  return MergingBuilder<List<String>, LibDir>(
    generator: BootstrapAutoloaderGenerator(),
    inputFiles: options.config['input_files'],
    outputFile: options.config['output_file'],
    header: options.config['header'],
    footer: options.config['footer'],
    sortAssets: options.config['sort_assets'],
  );
}
