# Http Client Velvet Plugin

## Installation

To use this plugin, add `http_client_velvet_plugin` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

```dart
import 'package:http_client_velvet_plugin/http_client_velvet_plugin.dart';

void main() {
  createVelvetApp()
    ..withPlugins((pluginManager) {
      // Add the HttpClientVelvetPlugin to the plugin manager
      pluginManager.add(HttpClientVelvetPlugin());
    })
    ..withConfigs((configManager) {
      // Add the HttpClientConfig to the config manager
      configManager.add(HttpClientConfig()); // This is your own implementation that extends HttpClientConfigContract
    })
    ..run();
}
```

## Contributing

If you would like to contribute to Velvet, please read the [contributing guidelines](../../CONTRIBUTING.md) before submitting a pull request.

## License

Velvet is released under the [MIT License](LICENSE).