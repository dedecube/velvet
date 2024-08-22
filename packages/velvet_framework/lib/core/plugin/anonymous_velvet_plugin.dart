import 'dart:async';

import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

class AnonymousVelvetPlugin extends VelvetPlugin {
  AnonymousVelvetPlugin({
    FutureOr<void> Function()? boot,
    FutureOr<void> Function()? register,
  })  : _boot = boot,
        _register = register;

  final FutureOr<void> Function()? _boot;

  final FutureOr<void> Function()? _register;

  @override
  FutureOr<void> boot() async {
    if (_boot == null) {
      return;
    }

    await _boot();
  }

  @override
  FutureOr<void> register() async {
    if (_register == null) {
      return;
    }

    await _register();
  }
}
