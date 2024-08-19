import 'dart:async';

abstract class VelvetCommand {
  String get name;
  String get description;

  FutureOr<void> run();
}
