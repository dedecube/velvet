# Velvet

[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

Velvet is a robust, efficient, and flexible framework for developing Flutter applications.
It is designed to be simple to use and easy to understand, while providing a solid foundation for building production-ready applications.

## Packages

Velvet is composed of several packages, each of which provides a specific set of features.

| Package | Version | Description |
| ------- | ------- | ----------- |
| [velvet_framework](packages/velvet_framework) | [![pub package](https://img.shields.io/pub/v/velvet_framework.svg)](https://pub.dev/packages/velvet_framework) | The core package that provides the foundation for building Flutter applications. |
| [velvet_annotations](packages/velvet_annotations) | [![pub package](https://img.shields.io/pub/v/velvet_annotations.svg)](https://pub.dev/packages/velvet_annotations) | A set of annotations that can be used to generate code for Velvet applications. |
| [velvet_generator](packages/velvet_generator) | [![pub package](https://img.shields.io/pub/v/velvet_generator.svg)](https://pub.dev/packages/velvet_generator) | A code generator that generates code for Velvet applications. |
| [velvet_lints](packages/velvet_lints) | [![pub package](https://img.shields.io/pub/v/velvet_lints.svg)](https://pub.dev/packages/velvet_lints) | A set of lints that can be used to enforce best practices in Velvet applications. |
| [velvet_support](packages/velvet_support) | [![pub package](https://img.shields.io/pub/v/velvet_support.svg)](https://pub.dev/packages/velvet_support) | A set of utilities and helpers that can be used to build Velvet applications. |

## Create a new Velvet application

To create a new Velvet application, run the following command:

```bash
flutter create --org com.example my_app
```

Then, add the following dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  velvet: ^0.1.0

dev_dependencies:
  velvet_annotations: ^0.1.0
  velvet_generator: ^0.1.0
  velvet_lints: ^0.1.0
```

Finally, run the following command to generate the necessary code for your Velvet application:

```bash
flutter pub run build_runner build
```

## Developing

### VS Code Users

- Install the recommended extensions.

Useful tasks:
- Melos: Run `melos bootstrap` to install dependencies and link packages.


## Contributing

If you would like to contribute to Velvet, please read the [contributing guidelines](CONTRIBUTING.md) before submitting a pull request.

## License

Velvet is released under the [MIT License](LICENSE).
