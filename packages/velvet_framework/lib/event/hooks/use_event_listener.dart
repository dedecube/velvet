import 'package:velvet_framework/event/contracts/event_contract.dart';
import 'package:velvet_framework/event/utils/listen.dart';
import 'package:velvet_framework/hooks/use_effect_once/use_effect_once.dart';

/// Listens to the specified event and calls the callback when the event is
/// dispatched.
///
/// Automatically disposes the subscription when the component is unmounted.
void useEventListener<T extends EventContract>(
  void Function(T event) callback,
) {
  useEffectOnce(
    () {
      final subscription = listen<T>(callback);

      return subscription.cancel;
    },
  );
}
