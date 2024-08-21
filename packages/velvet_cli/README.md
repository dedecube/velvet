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
flutter run velvet_cli make:route
```

Generates a new route and a new page in your project.
Also adds mandatory `part` and `import` in the `routes.dart` file.

### list

```shell
flutter run velvet_cli list
```

Returns a list of all the routes in your project.

### update cli
    
```shell
flutter run velvet_cli update:cli
```

Updates the Velvet CLI to the latest version.

### update framework

```shell
flutter run velvet_cli update:framework
```

Updates the Velvet Framework to the latest version.

## Custom Commands

You can also create custom commands for your project.

1. Create a bin folder in the root of your project.
2. Create the main.dart file in the bin folder with following code:

```dart
import 'package:velvet_cli/velvet_cli.dart';

void main(List<String> arguments) {
  createVelvetCli().run(arguments);
}
```
3. Create a command. Create a commands folder inside bin folder and create a file with the command name. For example, if you want to create a command called `hello`, create a file called `hello_command.dart` in the commands folder with the following code:

```dart
import 'dart:async';

import 'package:velvet_cli/velvet_cli.dart';

class HelloCommand extends VelvetCommand {
  @override
  String get name => 'hello';

  @override
  String get description => 'Prints "Hello, World!"';

  @override
  FutureOr<void> run() {
    print('Hello, World!');
  }
}
```

4. Register the command. Open the main.dart file in the bin folder and add the following code:

```dart
import 'package:velvet_cli/velvet_cli.dart';

import 'commands/hello_command.dart';

void main(List<String> arguments) {
  createVelvetCli()
    ..withCommands((commandHandler) {
      commandHandler.add(HelloCommand());
    })
    ..run(arguments);
}
```

5. Finally, add executables in pubspec.yaml:

```yaml
executables:
  your_project_name:
```

6. Run the command:

```shell
flutter run your_project_name:main hello
```

## Contributing

If you would like to contribute to Velvet, please read the [contributing guidelines](../../CONTRIBUTING.md) before submitting a pull request.

## License

Velvet is released under the [MIT License](LICENSE).
