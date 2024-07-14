import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/event/event_bus.dart';

part 'event_bus_provider.g.dart';

/// Provides the [EventBus] instance.
///
/// Most of the time, you will not need to use this provider directly.
/// Instead, use the [useEventBus] hook in Widgets or the event / listen helper functions.
///
/// ### Usage
///
/// With the `useProvider` hook:
/// ```dart
/// final eventBus = useProvider(eventBusProvider);
/// ```
///
/// With the `container`:
/// ```dart
/// final eventBus = container().read(eventBusProvider);
/// ```
///
/// With the `ref`:
/// ```dart
/// final eventBus = ref.read(eventBusProvider);
/// ```
@Riverpod(keepAlive: true, dependencies: [])
EventBus eventBus(EventBusRef ref) {
  return EventBus();
}
