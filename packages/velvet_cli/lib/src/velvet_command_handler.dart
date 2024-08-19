import 'package:dcli/dcli.dart';
import 'package:velvet_cli/src/velvet_command.dart';

class VelvetCommandHandler {
  VelvetCommandHandler(this.commands);

  final List<VelvetCommand> commands;

  String _commandName(List<String> args) {
    return args.isEmpty ? 'list' : args.first;
  }

  void handle(List<String> args) {
    final commandName = _commandName(args);

    final command =
        commands.where((command) => command.name == commandName).firstOrNull;

    if (command == null) {
      echo(red('No command found for name: $commandName'), newline: true);

      handle(['list']);

      return;
    }

    command.run();
  }
}
