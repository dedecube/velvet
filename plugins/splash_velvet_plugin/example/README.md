# Splash Velvet Plugin

## Usage

This plugin requires only to be installed in the Kernel:

```dart
import 'package:velvet_framework/velvet_framework.dart';
import 'package:splash_velvet_plugin/splash_velvet_plugin.dart';

void main() {
  Kernel()
    // other stuff
   ..installPlugin(SplashVelvetPlugin())
   ..run();
}
```