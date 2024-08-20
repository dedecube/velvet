import 'dart:io';

import 'package:velvet_cli/src/velvet_command.dart';

class UpdateCliCommand extends VelvetCommand {
  @override
  String get name => 'update:cli';

  @override
  String get description => 'Update the Velvet CLI';

  @override
  Future<void> run() async {
    await Process.start(
      'flutter',
      ['pub', 'add', 'dev:velvet_cli'],
      mode: ProcessStartMode.inheritStdio,
    );
  }
}
