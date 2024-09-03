import 'package:velvet_framework/src/core/event/velvet_event.dart';

/// Event that is triggered when the .env file is read.
/// This event is used to reload the .env file when it changes.
/// This event is only triggered in debug mode.
class EnvReadEvent extends VelvetEvent {
  EnvReadEvent(this.content);

  final String content;
}
