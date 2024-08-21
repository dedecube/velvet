import 'dart:io';

import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/services/pubspec.dart';
import 'package:velvet_cli/src/velvet_command.dart';

class UpdateCliCommand extends VelvetCommand {
  @override
  String get name => 'update:cli';

  @override
  String get description => 'Update the Velvet CLI';

  @override
  Future<void> run() async {
    var packageSignature = 'velvet_cli';

    if (container.get<Pubspec>().hasDevDependency(packageSignature)) {
      packageSignature = 'dev:$packageSignature';
    }

    await Process.start(
      'flutter',
      ['pub', 'add', packageSignature],
      mode: ProcessStartMode.inheritStdio,
    );
  }
}
