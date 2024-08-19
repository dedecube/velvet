import 'dart:ui';

import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

class AnonymousVelvetPlugin extends VelvetPlugin {
  AnonymousVelvetPlugin({
    this.bootCallback,
    this.registerCallback,
  });

  final VoidCallback? bootCallback;

  final VoidCallback? registerCallback;

  @override
  void boot() {
    bootCallback?.call();
  }

  @override
  void register() {
    registerCallback?.call();
  }
}
