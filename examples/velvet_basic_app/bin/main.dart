import 'package:velvet_cli/velvet_cli.dart';

import 'commands/example_command.dart';

void main(List<String> arguments) {
  createVelvetCli()
    ..withCommands((commandHandler) {
      commandHandler.add(ExampleCommand());
    })
    ..run(arguments);
}
