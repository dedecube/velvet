# Splash Velvet Plugin

## Installation

To install the Velvet plugin, you need to add the following dependency to your `pubspec.yaml`:

```yaml
flutter pub add splash_velvet_plugin
```

## Usage

To use the Velvet plugin, you need to import the package and add the plugin to the Kernel:

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

## Contributing

If you would like to contribute to Velvet, please read the [contributing guidelines](../../CONTRIBUTING.md) before submitting a pull request.

## License

Velvet is released under the [MIT License](LICENSE).