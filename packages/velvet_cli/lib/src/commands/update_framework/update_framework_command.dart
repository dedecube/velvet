import 'package:velvet_cli/src/velvet_command.dart';
import 'package:velvet_cli/velvet_cli.dart';

class UpdateFrameworkCommand extends VelvetCommand {
  @override
  String get name => 'update:framework';

  @override
  String get description => 'Update the Velvet Framework';

  @override
  Future<void> run() async {
    'dart pub add velvet_framework'.run;
  }
}
