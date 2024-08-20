# Dev Panel Velvet Plugin

## Installation

To install the Velvet plugin, you need to add the following dependency to your `pubspec.yaml`:

```yaml
flutter pub add dev_panel_velvet_plugin
```

## Usage

To use the Velvet plugin, you need to import the package and add the plugin to the Kernel:

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

## Contributing

If you would like to contribute to Velvet, please read the [contributing guidelines](../../CONTRIBUTING.md) before submitting a pull request.

## License

Velvet is released under the [MIT License](LICENSE).