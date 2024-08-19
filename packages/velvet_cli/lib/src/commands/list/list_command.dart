import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/velvet_command.dart';
import 'package:velvet_cli/src/velvet_command_handler.dart';
import 'package:velvet_cli/velvet_cli.dart';

class ListCommand extends VelvetCommand {
  @override
  String get name => 'list';

  @override
  String get description => 'List all available commands';

  @override
  run() {
    final commandHandler = container.get<VelvetCommandHandler>();

    print('');

    echo('-' * 80, newline: true);
    echo('Available commands:', newline: true);
    echo('-' * 80, newline: true);
    print('');

    print(Format().row([
      green('Command'),
      white('Description'),
    ], widths: [
      35,
      80
    ]));

    print('');

    for (final command in commandHandler.commands) {
      print(Format().row([
        green(command.name),
        white(command.description),
      ], widths: [
        35,
        80
      ]));
    }
  }
}
