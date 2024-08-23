import 'dart:async';

import 'package:velvet_framework/core/event/velvet_event.dart';

abstract class VelvetEventBusContract {
  void dispatch<T extends VelvetEvent>(T event);

  StreamSubscription<T> on<T extends VelvetEvent>(
    void Function(T event) onEvent,
  );
}
