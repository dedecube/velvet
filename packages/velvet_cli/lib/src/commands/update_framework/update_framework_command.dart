import 'dart:io';

import 'package:velvet_cli/src/velvet_command.dart';

class UpdateFrameworkCommand extends VelvetCommand {
  @override
  String get name => 'update:framework';

  @override
  String get description => 'Update the Velvet Framework';

  @override
  Future<void> run() async {
    await Process.start(
      'flutter',
      ['pub', 'add', 'velvet_framework'],
      mode: ProcessStartMode.inheritStdio,
    );
  }
}
