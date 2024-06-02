# Velvel Support - Example

## Str

```dart
import 'package:velvet_support/velvet_support.dart';

void main() {
  // Example of using the Str::camel method
  print(Str.camel('hello_world')); // Output: helloWorld

  // Example of using the Str::kebab method
  print(Str.kebab('helloWorld')); // Output: hello-world

  // Example of using the Str::snake method
  print(Str.snake('helloWorld')); // Output: hello_world

  // Example of using the Str::studly method
  print(Str.studly('hello_world')); // Output: HelloWorld

  // Example of using the Str::upper method
  print(Str.upper('helloWorld')); // Output: HELLOWORLD

  // Example of using the Str::lower method
  print(Str.lower('helloWorld')); // Output: helloworld
}
```

## Stringable

```dart
import 'package:velvet_support/velvet_support.dart';

void main() {
  var phrase = 'My name is: Daniele.';

  var name = Str.of(phrase)
    .after('My name is: ')
    .before('.')
    .toString(); // Output: Daniele
}
```