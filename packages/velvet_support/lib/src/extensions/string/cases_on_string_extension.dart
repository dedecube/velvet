extension CasesOnStringExtension on String {
  /// Converts the string to camel case.
  ///
  /// Camel case is a naming convention where the first letter of each word is capitalized
  /// except for the first word, which starts with a lowercase letter.
  ///
  /// Example:
  /// ```dart
  /// String name = 'hello_world';
  /// String camelCaseName = name.camel(); // Output: 'helloWorld'
  /// ```
  ///
  /// Returns the camel case representation of the string.
  String camel() {
    return studly().firstLower();
  }

  /// Converts the first character of the string to lowercase.
  ///
  /// If the string is empty, an empty string is returned.
  /// If the string has only one character, the character is converted to lowercase.
  /// If the string has more than one character, the first character is converted to lowercase
  /// and the rest of the string remains unchanged.
  ///
  /// Example:
  /// ```dart
  /// String name = 'John';
  /// String result = name.firstLower(); // result: 'john'
  /// ```
  String firstLower() {
    if (isEmpty) {
      return '';
    }

    if (length == 1) {
      return toLowerCase();
    }

    return this[0].toLowerCase() + substring(1);
  }

  /// Converts the first character of a string to uppercase and returns the modified string.
  /// If the string is empty, an empty string is returned.
  ///
  /// Example:
  /// ```dart
  /// String name = 'john';
  /// String modifiedName = name.firstUpper(); // 'John'
  /// ```
  String firstUpper() {
    if (isEmpty) {
      return '';
    }

    if (length == 1) {
      return toUpperCase();
    }

    return this[0].toUpperCase() + substring(1);
  }

  /// Checks if the string is in lowercase.
  ///
  /// Returns `true` if the string contains only lowercase letters, otherwise returns `false`.
  /// This method uses a regular expression to match the string against the pattern `^[a-z]+$`.
  ///
  /// Example:
  ///
  /// ```dart
  /// print('hello'.isLower()); // Output: true
  /// print('Hello'.isLower()); // Output: false
  /// print('123'.isLower());   // Output: false
  /// ```
  bool isLower() {
    return RegExp(r'^[a-z]+$').hasMatch(this);
  }

  /// Converts the string to kebab case.
  ///
  /// Kebab case is a naming convention where words are separated by hyphens.
  /// This method converts the string to kebab case by replacing all occurrences
  /// of the specified separator with hyphens.
  ///
  /// Example:
  /// ```dart
  /// String str = 'helloWorld';
  /// String kebabStr = str.kebab();
  /// print(kebabStr); // Output: 'hello-world'
  /// ```
  ///
  /// Returns the kebab case representation of the string.
  String kebab() {
    return snake('-');
  }

  /// Converts a string to snake case.
  ///
  /// The snake case is a naming convention where each word is separated by a delimiter,
  /// which is typically an underscore '_'. This method converts the string to snake case
  /// by replacing spaces with the delimiter and converting uppercase letters to lowercase.
  ///
  /// The [delimiter] parameter specifies the character used to separate words in the snake case.
  /// By default, it is set to underscore '_'.
  ///
  /// Example:
  /// ```dart
  /// String name = 'helloWorld';
  /// String snakeCase = name.snake(); // Output: 'hello_world'
  /// ```
  String snake([String delimiter = '_']) {
    var value = this;

    if (!isLower()) {
      value = upperWords().replaceAll(RegExp(r'\s+'), '').replaceAllMapped(
        RegExp(r'(.)(?=[A-Z])'),
        (match) {
          return '${match.group(1)}$delimiter';
        },
      ).toLowerCase();
    }

    return value;
  }

  /// Converts a string to studly case.
  ///
  /// Studly case is a naming convention where each word in a string is capitalized
  /// and concatenated together without any separators.
  ///
  /// Example:
  /// ```dart
  /// String input = 'hello_world';
  /// String result = input.studly();
  /// print(result); // Output: HelloWorld
  /// ```
  ///
  /// Returns the string converted to studly case.
  String studly() {
    List<String> words = replaceAll(RegExp(r'[-,_]'), ' ').split(' ');

    return words.map((word) => word.firstUpper()).toList().join();
  }

  /// This function converts the first letter of each word in a string to uppercase.
  /// Optionally, a custom separator can be provided.
  ///
  /// This method is similar to ucwords in PHP.
  ///
  /// Example:
  /// ```dart
  /// print('hello world'.upperWords()); // Hello World
  /// print('hello_world'.upperWords('_')); // Hello World
  /// ```
  String upperWords([String separator = ' \t\r\n\f\v']) {
    List<String> words = split(RegExp('[$separator]'));
    StringBuffer result = StringBuffer();

    for (int i = 0; i < words.length; i++) {
      String word = words[i];

      if (word.isNotEmpty) {
        result.write(word.firstUpper());

        if (i < words.length - 1) {
          result.write(' ');
        }
      }
    }

    return result.toString();
  }
}
