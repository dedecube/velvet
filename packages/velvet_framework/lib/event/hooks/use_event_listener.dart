import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/event/contracts/event_contract.dart';
import 'package:velvet_framework/event/utils/listen.dart';

/// Listens to the specified event and calls the callback when the event is
/// dispatched.
///
/// Automatically disposes the subscription when the component is unmounted.
void useEventListener<T extends EventContract>(
  void Function(T event) callback,
) {
  useEffect(
    () {
      final subscription = listen<T>(callback);

      return subscription.cancel;
    },
    [],
  );
}
