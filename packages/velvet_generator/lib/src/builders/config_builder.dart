import 'package:build/build.dart';
import 'package:merging_builder/merging_builder.dart';
import 'package:velvet_generator/src/generators/config_gererator.dart';

Builder configAutoloaderBuilder(BuilderOptions options) {
  final defaultOptions = BuilderOptions({
    'input_files': 'lib/config/*.dart',
    'output_file': 'lib/config.velvet.dart',
    'header': ConfigAutoloaderGenerator.header,
    'footer': ConfigAutoloaderGenerator.footer,
    'sort_assets': true,
  });

  options = defaultOptions.overrideWith(options);

  return MergingBuilder<List<String>, LibDir>(
    generator: ConfigAutoloaderGenerator(),
    inputFiles: options.config['input_files'],
    outputFile: options.config['output_file'],
    header: options.config['header'],
    footer: options.config['footer'],
    sortAssets: options.config['sort_assets'],
  );
}
