import 'dart:async';

import 'package:velvet_framework/event/velvet_event.dart';

abstract class VelvetEventBusContract {
  void dispatch(VelvetEvent event);

  StreamSubscription<T> on<T extends VelvetEvent>(
    void Function(T event) onEvent,
  );
}
