import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/dcli/resource/generated/resource_registry.g.dart';
import 'package:velvet_cli/src/extensions/decode_on_package_resource.dart';
import 'package:velvet_cli/src/extensions/name_parts_on_string.dart';
import 'package:velvet_cli/src/mixins/import_finder.dart';
import 'package:velvet_cli/src/mixins/part_finder.dart';
import 'package:velvet_cli/src/mixins/writer.dart';
import 'package:velvet_cli/src/services/pubspec.dart';
import 'package:velvet_cli/src/velvet_command.dart';
import 'package:velvet_support/velvet_support.dart';

class MakeRouteCommand extends VelvetCommand
    with PartFinder, ImportFinder, Writer {
  @override
  String get name => 'make:route';

  @override
  String get description => 'Creates a new route file.';

  static const routesPath = 'lib/presentation/routes.dart';

  String _composeRoutePath(String name) {
    final nameParts = name.nameParts();

    if (nameParts.path.isNotEmpty) {
      return 'lib/presentation/pages/${nameParts.path}/${nameParts.basename}_route.dart';
    }

    return 'lib/presentation/pages/${nameParts.basename}_route.dart';
  }

  String _composePagePath(String name) {
    final nameParts = name.nameParts();

    if (nameParts.path.isNotEmpty) {
      return 'lib/presentation/pages/${nameParts.path}/${nameParts.basename}_page.dart';
    }

    return 'lib/presentation/pages/${nameParts.basename}_page.dart';
  }

  _writeRoute(String name) {
    final nameParts = name.nameParts();
    final routePath = _composeRoutePath(name);
    final relativeBacks = '../' * (nameParts.path.split('/').length + 1);

    final routeContent = ResourceRegistry
        .resources['stubs/route.dart.stub']!.decoded
        .replaceAll('ExampleRoute', '${nameParts.basename.studly()}Route')
        .replaceAll('ExamplePage', '${nameParts.basename.studly()}Page')
        .replaceAll('{{ relativeBacks }}', relativeBacks);

    write(routePath, routeContent);
  }

  _writePage(String name) {
    final nameParts = name.nameParts();
    final pagePath = _composePagePath(name);
    final pageContent = ResourceRegistry
        .resources['stubs/page.dart.stub']!.decoded
        .replaceAll('ExamplePage', '${nameParts.basename.studly()}Page');

    write(pagePath, pageContent);
  }

  _writePartAndImportInRoutesFile(String name) {
    final routesContent = File(routesPath).readAsStringSync();
    final routesLines = routesContent.split('\n');

    final routeParts = name.nameParts();

    final partLine =
        "part 'pages/${routeParts.path}/${routeParts.basename}_route.dart';";
    if (!routesLines.contains(partLine)) {
      routesLines.insert(indexOfLastPartLine(routesLines), partLine);
    }

    final importLine =
        "import 'package:${container.get<Pubspec>().name}/presentation/pages/${routeParts.path}/${routeParts.basename}_page.dart';";
    if (!routesLines.contains(importLine)) {
      routesLines.insert(indexOfLastImportLine(routesLines), importLine);
    }

    File(routesPath).writeAsStringSync(routesLines.join('\n'));
  }

  @override
  run() async {
    final name = ask('Enter the name:');

    _writePage(name);
    _writeRoute(name);
    _writePartAndImportInRoutesFile(name);
  }
}
