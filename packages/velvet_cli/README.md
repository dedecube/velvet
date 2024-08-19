# Velvet Cli

This is a command line interface for the Velvet Framework. It allows you to speed up your development process by generating boilerplate code for your project and executing commands to manage your project.

## Commands

### Overview

| Command                                 | Description                                        |
| --------------------------------------- | -------------------------------------------------- |
| [`make:route`](#make-route)             | Generates a new route and a new page               |
| [`list`](#list)                         | Returns a list of all the routes in your project   |
| [`update:cli`](#update-cli)             | Updates the Velvet CLI to the latest version       |
| [`update:framework`](#update-framework) | Updates the Velvet Framework to the latest version |

### make route

```shell
dart run velvet_cli make:route
```

Generates a new route and a new page in your project.
Also adds mandatory `part` and `import` in the `routes.dart` file.

### list

```shell
dart run velvet_cli list
```

Returns a list of all the routes in your project.

### update cli
    
```shell
dart run velvet_cli update:cli
```

Updates the Velvet CLI to the latest version.

### update framework

```shell
dart run velvet_cli update:framework
```

Updates the Velvet Framework to the latest version.

## Contributing

If you would like to contribute to Velvet, please read the [contributing guidelines](../../CONTRIBUTING.md) before submitting a pull request.

## License

Velvet is released under the [MIT License](LICENSE).
