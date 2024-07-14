// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_bus_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$eventBusHash() => r'7cbfcc3d23dab9aa6f71cf4cd65cc97b9763f136';

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
///
/// Copied from [eventBus].
@ProviderFor(eventBus)
final eventBusProvider = Provider<EventBus>.internal(
  eventBus,
  name: r'eventBusProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$eventBusHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef EventBusRef = ProviderRef<EventBus>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
