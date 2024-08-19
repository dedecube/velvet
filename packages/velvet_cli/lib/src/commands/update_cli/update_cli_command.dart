import 'package:velvet_cli/src/velvet_command.dart';
import 'package:velvet_cli/velvet_cli.dart';

class UpdateCliCommand extends VelvetCommand {
  @override
  String get name => 'update:cli';

  @override
  String get description => 'Update the Velvet CLI';

  @override
  Future<void> run() async {
    'dart pub add velvet_cli'.run;
  }
}
