import 'package:build/build.dart';
import 'package:merging_builder/merging_builder.dart';

import 'src/generators/bootstrap_generator.dart';

/// Defines a merging builder.
/// Honours the options: `input_files`, `output_file`, `header`, `footer`,
/// and `sort_assets` that can be set in `build.yaml`.
Builder bootstrapAutoloaderBuilder(BuilderOptions options) {
  final defaultOptions = BuilderOptions({
    'input_files': 'lib/bootstrap/*.dart',
    'output_file': 'lib/bootstrap.velvet.dart',
    'header': BootstrapAutoloaderGenerator.header,
    'footer': BootstrapAutoloaderGenerator.footer,
    'sort_assets': true,
  });

  // Apply user set options.
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
