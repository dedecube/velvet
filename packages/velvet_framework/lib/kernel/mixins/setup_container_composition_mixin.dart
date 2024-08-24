import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/utils/callback_manager.dart';

typedef RegisterCallback = FutureOr Function();

typedef BootCallback = FutureOr Function();

mixin SetupContainerCompositionMixin on KernelContract {
  final _registerCallbacks = CallbackManager<RegisterCallback>();

  final _bootCallbacks = CallbackManager<BootCallback>();

  /// Register a callback to be called when the container is ready
  void withRegister(RegisterCallback callback) {
    throwIfRunning();

    _registerCallbacks.add(callback);
  }

  /// Register a callback to be called when the container is booted
  void withBoot(BootCallback callback) {
    throwIfRunning();

    _bootCallbacks.add(callback);
  }

  @protected
  Future<void> runRegisterCallbacks() async {
    await _registerCallbacks.callConcurrently();
  }

  @protected
  Future<void> runBootCallbacks() async {
    await _bootCallbacks.callConcurrently();
  }
}
