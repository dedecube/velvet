# Velvel Annotation - Example

## VelvetBootstrap

The `@velvetBootstrap` annotation is used to generate the `bootstrap.dart` file.
The bootstrap.dart file should be used in the main.dart file to bootstrap the application.

You should create a file for each service or code to run on bootstrap.

Example of usage:

```dart
import 'package:dede_annotations/dede_annotations.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_orientation_bootstrap.g.dart';

@bootstrap
@Riverpod(keepAlive: true, dependencies: [])
Future<void> deviceOrientationBootstrap(
  DeviceOrientationBootstrapRef ref,
) async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
```

in main.dart file:

```dart
import 'package:medical_lab/bootstrap.dede.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  Kernel()
    ..bootMany(bootstrapFunctions)
    ..run();
}
```