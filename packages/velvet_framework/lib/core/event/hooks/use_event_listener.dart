import 'package:flutter/material.dart';
import 'package:velvet_framework/core/event/utils/listen.dart';
import 'package:velvet_framework/core/event/velvet_event.dart';
import 'package:velvet_framework/hooks/use_effect_once/use_effect_once.dart';

/// Listens to the specified event and calls the callback when the event is
/// dispatched.
///
/// The callback is called after the frame is rendered if [wrapWithPostFrameCallback] is `true`.
///
/// Wrapping the callback with [WidgetsBinding.instance.addPostFrameCallback] is useful when
/// the event listener causes a rebuild while the component is being built.
///
/// Automatically disposes the subscription when the component is unmounted.
void useEventListener<T extends VelvetEvent>(
  void Function(T event) callback, {
  bool wrapWithPostFrameCallback = true,
}) {
  useEffectOnce(
    () {
      final subscription = listen<T>((event) {
        if (wrapWithPostFrameCallback) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            callback(event);
          });

          return;
        }

        callback(event);
      });

      return subscription.cancel;
    },
  );
}
