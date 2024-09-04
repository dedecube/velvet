import 'dart:async';
import 'dart:io';

import 'package:velvet_cli/src/dcli/resource/generated/resource_registry.g.dart';
import 'package:velvet_cli/velvet_cli.dart';

class InstallCommand extends VelvetCommand with Writer {
  @override
  String get name => 'install';

  @override
  String get description => 'Install the Velvet Framework';

  String get _projectName => Pubspec().name;

  final List<String> _packagesToInstall = [
    'velvet_annotation',
    'velvet_framework',
  ];

  final List<String> _devPackagesToInstall = [
    'dev:build_runner',
    'dev:custom_lint',
    'dev:velvet_generator',
    'dev:velvet_custom_lints',
  ];

  List<String> _composePubAddCommand() {
    return ['pub', 'add', ..._packagesToInstall, ..._devPackagesToInstall];
  }

  void _writeMain() {
    final mainContent = ResourceRegistry
        .resources['install/main.dart.stub']!.decoded
        .replaceAll('{{ projectName }}', _projectName);

    write('lib/main.dart', mainContent);
  }

  void _writeRouterConfig() {
    final routerConfigContent = ResourceRegistry
        .resources['install/config/router_config.dart.stub']!.decoded
        .replaceAll('{{ projectName }}', _projectName);

    write('lib/config/router_config.dart', routerConfigContent);
  }

  void _writeFormConfig() {
    final formConfigContent = ResourceRegistry
        .resources['install/config/form_config.dart.stub']!.decoded
        .replaceAll('{{ projectName }}', _projectName);

    write('lib/config/form_config.dart', formConfigContent);
  }

  void _writeTranslationConfig() {
    final translationConfigContent = ResourceRegistry
        .resources['install/config/translation_config.dart.stub']!.decoded
        .replaceAll('{{ projectName }}', _projectName);

    write('lib/config/translation_config.dart', translationConfigContent);
  }

  void _writeThemeConfig() {
    final themeConfigContent = ResourceRegistry
        .resources['install/config/theme_config.dart.stub']!.decoded
        .replaceAll('{{ projectName }}', _projectName);

    write('lib/config/theme_config.dart', themeConfigContent);
  }

  void _writeRoutes() {
    final routesContent = ResourceRegistry
        .resources['install/presentation/routes.dart.stub']!.decoded
        .replaceAll('{{ projectName }}', _projectName);

    write('lib/presentation/routes.dart', routesContent);
  }

  Future<void> _buildRunnerBuild() async {
    final process = await Process.start(
      'flutter',
      ['pub', 'run', 'build_runner', 'build'],
      mode: ProcessStartMode.inheritStdio,
    );

    await process.exitCode;
  }

  Future<void> _addPackages() async {
    final process = await Process.start(
      'flutter',
      _composePubAddCommand(),
      mode: ProcessStartMode.inheritStdio,
    );

    await process.exitCode;
  }

  void _rmWidgetTestIfExists() {
    final widgetTestFile = File('test/widget_test.dart');

    if (widgetTestFile.existsSync()) {
      widgetTestFile.deleteSync();
    }
  }

  @override
  FutureOr<void> run() async {
    await _addPackages();
    _writeMain();
    _writeRouterConfig();
    _writeFormConfig();
    _writeTranslationConfig();
    _writeThemeConfig();
    _writeRoutes();
    _rmWidgetTestIfExists();
    await _buildRunnerBuild();
  }
}
