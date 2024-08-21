import 'package:dcli/dcli.dart';
import 'package:velvet_cli/src/velvet_command.dart';

class VelvetCommandHandler {
  VelvetCommandHandler({this.commands = const []});

  final List<VelvetCommand> commands;

  void add(VelvetCommand command) {
    commands.add(command);
  }

  String _commandName(List<String> arguments) {
    return arguments.isEmpty ? 'list' : arguments.first;
  }

  void handle(List<String> arguments) {
    final commandName = _commandName(arguments);

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
