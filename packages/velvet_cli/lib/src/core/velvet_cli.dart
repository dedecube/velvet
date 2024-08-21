import 'package:velvet_cli/src/commands/list/list_command.dart';
import 'package:velvet_cli/src/commands/make_route/make_route_command.dart';
import 'package:velvet_cli/src/commands/update_cli/update_cli_command.dart';
import 'package:velvet_cli/src/commands/update_framework/update_framework_command.dart';
import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/services/pubspec.dart';
import 'package:velvet_cli/src/velvet_command_handler.dart';

class VelvetCli {
  VelvetCli() {
    _init();
  }

  void _init() {
    container.registerSingleton(Pubspec());
    container.registerSingleton(VelvetCommandHandler(commands: [
      ListCommand(),
      MakeRouteCommand(),
      UpdateCliCommand(),
      UpdateFrameworkCommand(),
    ]));
  }

  withCommands(void Function(VelvetCommandHandler commandManager) callback) {
    callback(container.get<VelvetCommandHandler>());
  }

  void run(List<String> arguments) {
    container.get<VelvetCommandHandler>().handle(arguments);
  }
}
