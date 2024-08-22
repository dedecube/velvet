import 'package:velvet_framework/core/event/utils/listen.dart';
import 'package:velvet_framework/core/event/velvet_event.dart';
import 'package:velvet_framework/hooks/use_effect_once/use_effect_once.dart';

/// Listens to the specified event and calls the callback when the event is
/// dispatched.
///
/// Automatically disposes the subscription when the component is unmounted.
void useEventListener<T extends VelvetEvent>(
  void Function(T event) callback,
) {
  useEffectOnce(
    () {
      final subscription = listen<T>(callback);

      return subscription.cancel;
    },
  );
}
