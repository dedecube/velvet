# Dev Panel Velvet Plugin

## Usage

This plugin requires only to be installed in the Kernel:

```dart
import 'package:velvet_framework/velvet_framework.dart';
import 'package:dev_panel_velvet_plugin/dev_panel_velvet_plugin.dart';

void main() {
  Kernel()
    // other stuff
   ..installPlugin(DevPanelVelvetPlugin())
   ..run();
}
```