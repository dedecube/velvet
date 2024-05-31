import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velvet_framework/kernel/widgets/kernel_widget.dart';
import 'package:velvet_framework/store/contracts/store_contract.dart';
import 'package:velvet_framework/store/providers/store_provider.dart';

/// Create resusable storable data
///
/// Example:
/// 1. Create a class that extends [Storable]
/// ```dart
/// class OnboardingStorable extends Storable<bool> {
///   @override
///   Future<bool?> get({bool? defaultValue}) async {
///     return store()
///       .simple
///       .getBool(key, defaultValue: defaultValue);
///   }
///
///   @override
///   Future<void> set(bool data) async {
///     return store()
///       .simple
///       .setBool(key, data);
///   }
/// }
/// ```
/// 2. Use the storable class
/// ```dart
/// final onboardingStorable = OnboardingStorable();
///
/// final onboarding = await onboardingStorable.set(true);
///
/// final isOnboarded = await onboardingStorable.get();
///
/// print(isOnboarded); // true
/// ```
///
/// If you use the default `key`, when create more instance of the same class,
/// it will get/set using the same key
///
/// Example:
/// ```dart
/// final onboardingStorable1 = OnboardingStorable();
/// final onboardingStorable2 = OnboardingStorable();
///
/// await onboardingStorable1.set(true);
///
/// final onboarding1 = await onboardingStorable1.get(true);
///
/// final onboarding2 = await onboardingStorable2.get();
///
/// print(onboarding1); // true
/// print(onboarding2); // true - because it use the same key
/// ```
///
/// If you want to use different key, you can override the [key] getter
///
/// Example:
/// ```dart
/// class OnboardingStorable extends Storable<bool> {
///   final String _key;
///
///   OnboardingStorable(this._key);
///
///   @override
///   get key => _key;
/// }
/// ```
abstract class Storable<T> {
  get key => T.toString();

  Future<T?> get({T? defaultValue});

  Future<void> set(T data);

  StoreContract store() {
    return ProviderScope.containerOf(KernelWidget.resolutionKey.currentContext!)
        .read(storeProvider)
        .requireValue;
  }
}
