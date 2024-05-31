<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# Support

A porting of Laravel Support package to Dart.

The main goal of this package is to provide a set of utilities that are present in Laravel's Support package.

>[!NOTE]
> This package is not intended to be a 1:1 porting of Laravel's Support package, but rather a subset of the most useful utilities.
> Due to the nature of Dart, some utilities can be have a different: in Laravel `contains` handles both string and array, in Dart this is not possibile, so it mandatory to define also a `containsAny` method (that does not exists in Laravel).

## Why this package?

- **Consistency**: If you are familiar with Laravel's Support package, you can use this package to have a more consistent codebase between Laravel and Dart projects.
- **Speed up development**: Using this package can help to speed up the development process, avoiding to re-implement the same utilities in Dart from scratch.
- **Readability**: This package can help to make a more readable code, using the same utilities that you are familiar with.
- **Avoid bugs**: Each feature of this package will be tested to ensure that it works as expected. This can help to avoid bugs and unexpected behaviors that can be present in custom implementations.

## Installation

>[!WARNING] 
> This package is not yet published on pub.dev, so you need to install it from GitHub.

### Using github
Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  support:
    git:
      url: git://github.com/dedecube/dart-support.git
```

## Features

List of utilities and facades.
The definition is currently a work in progress, so it can be incomplete or not up to date.

- [ ] Array and Object
- [ ] Number
- [ ] Collection
- [ ] Url
- [ ] Miscellaneous
- [ ] Carbon
- [ ] Pipeline
- [ ] Sleep
- [ ] Http Client
- [Wip] Str
- [Wip] Stringable

## To do

- [ ] Move this list to a GitHub project board
- [Wip] Str
  - [x] list all "implementable" methods on this README's roadmap
  - [x] after
  - [x] afterLast
  - [ ] apa (currently skipped)
  - [ ] ascii (currently skipped)
  - [x] before
  - [x] beforeLast
  - [x] between
  - [x] betweenFirst
  - [x] camel
  - [ ] charAt
  - [x] contains
  - [ ] containsAny (this is not implemented in Laravel, because it is handled by contains)
  - [ ] containsAll
  - [ ] convertCase (currently skipped)
  - [ ] endsWith
  - [ ] endsWithAny (this is not implemented in Laravel, because it is handled by endsWith)
  - [ ] excerpt
  - [ ] finish
  - [ ] headline
  - [ ] inlineMarkdown
  - [ ] is
  - [ ] isAscii
  - [ ] isJson
  - [ ] isUlid
  - [ ] isUrl
  - [ ] isUuid
  - [x] kebab
  - [ ] lcfirst
  - [ ] length
  - [ ] limit
  - [x] lower
  - [ ] markdown
  - [ ] mask
  - [ ] orderedUuid
  - [ ] padBoth
  - [ ] padLeft
  - [ ] padRight
  - [ ] password
  - [ ] plural
  - [ ] pluralStudly
  - [ ] position
  - [ ] random
  - [ ] remove
  - [ ] repeat
  - [ ] replace
  - [ ] replaceArray
  - [ ] replaceFirst
  - [ ] replaceLast
  - [ ] replaceMatches
  - [ ] replaceStart
  - [ ] replaceEnd
  - [ ] reverse
  - [ ] singular
  - [x] snake
  - [ ] squish
  - [ ] start
  - [ ] startsWith
  - [x] studly
  - [ ] substr
  - [ ] substrCount
  - [ ] substrReplace
  - [ ] swap
  - [ ] take
  - [ ] title
  - [ ] toBase64
  - [ ] toHtmlString
  - [ ] trim
  - [ ] ltrim
  - [ ] rtrim
  - [ ] ucfirst
  - [ ] ucsplit
  - [x] upper
  - [ ] ulid
  - [ ] unwrap
  - [ ] uuid
  - [ ] wordCount
  - [ ] wordWrap
  - [ ] words
  - [ ] wrap 
- [Wip] Stringable
  - [ ] list all "implementable" methods on this README's roadmap
- [ ] Arr
  - [ ] list all "implementable" methods on this README's roadmap
- [ ] Collection
  - [ ] list all "implementable" methods on this README's roadmap
- [ ] Number
  - [ ] list all "implementable" methods on this README's roadmap
- [ ] Publish the package on pub.dev
- [ ] Add CI/CD
- [ ] Add code coverage
- [ ] Add badges to the README
- [ ] Add examples to the README
- [ ] Add a CONTRIBUTING.md file
- [ ] Add a CODE_OF_CONDUCT.md file
- [ ] Add a LICENSE file
- [ ] Add a CHANGELOG.md file

## Usage

The usage of each implemented utility is similar to Laravel's Support package.
Please refer to Laravel's documentation for more information:
- Str utilities: [https://laravel.com/docs/11.x/strings](https://laravel.com/docs/11.x/strings)

Some examples to use the Str utilities:

```dart
import 'package:velvet_support/support.dart';

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

Some examples to use the Stringable utilities:

```dart
import 'package:velvet_support/support.dart';

void main() {
  var phrase = 'My name is: Daniele.';

  var name = Str.of(phrase)
    .after('My name is: ')
    .before('.')
    .toString(); // Output: Daniele
}
```

## Contributing

This package is a work in progress, so any contribution is welcome.

If you want to contribute, please open an issue or a pull request.

## License

This package is licensed under the MIT license.
