import 'package:velvet_cli/src/commands/list/list_command.dart';
import 'package:velvet_cli/src/commands/make_route/make_route_command.dart';
import 'package:velvet_cli/src/commands/update_cli/update_cli_command.dart';
import 'package:velvet_cli/src/commands/update_framework/update_framework_command.dart';
import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/services/pubspec.dart';
import 'package:velvet_cli/src/velvet_command_handler.dart';

void main(List<String> arguments) {
  container.registerSingleton(Pubspec());

  container.registerSingleton(VelvetCommandHandler([
    ListCommand(),
    MakeRouteCommand(),
    UpdateCliCommand(),
    UpdateFrameworkCommand(),
  ]));

  container.get<VelvetCommandHandler>().handle(arguments);
}
