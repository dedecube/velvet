import 'dart:async';

import 'package:velvet_cli/velvet_cli.dart';

class ExampleCommand extends VelvetCommand {
  @override
  String get name => 'example';

  @override
  String get description => 'Example command';

  @override
  FutureOr<void> run() {
    print('Example command executed');
  }
}
