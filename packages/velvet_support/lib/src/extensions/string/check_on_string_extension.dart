extension CheckOnStringExtension on String {
  /// Checks if the string contains the specified [search] string.
  ///
  /// By default, the search is case-sensitive. However, you can set the [ignoreCase]
  /// parameter to `true` to perform a case-insensitive search.
  ///
  /// Example:
  /// ```dart
  /// var str = 'Hello, World!';
  /// print(str.doesContains('Hello')); // true
  /// print(str.doesContains('hello')); // false
  /// print(str.doesContains('WORLD', true)); // true
  /// ```
  bool doesContains(
    String search, {
    bool ignoreCase = false,
  }) {
    var value = this;

    if (ignoreCase) {
      value = value.toLowerCase();
      search = search.toLowerCase();
    }

    return contains(search);
  }

  /// Checks if the string contains any of the specified needles.
  ///
  /// The [needles] parameter is a list of strings to search for in the string.
  /// The [ignoreCase] parameter is an optional boolean value that indicates
  /// whether the search should be case-insensitive. By default, it is set to false.
  ///
  /// Returns true if the string contains any of the needles, false otherwise.
  ///
  /// Example usage:
  /// ```dart
  /// var str = 'Hello, World!';
  /// var needles = ['hello', 'world'];
  /// var result = str.doesContainsAny(needles, true);
  /// print(result); // Output: true
  /// ```
  bool doesContainsAny(
    List<String> needles, {
    bool ignoreCase = false,
  }) {
    return needles
        .any((needle) => doesContains(needle, ignoreCase: ignoreCase));
  }

  /// Checks if the current string contains all the specified needles.
  ///
  /// The [needles] parameter is a list of strings that will be checked against the current string.
  /// The [ignoreCase] parameter is an optional boolean value that determines whether the comparison should be case-insensitive.
  /// By default, [ignoreCase] is set to false.
  ///
  /// Returns true if the current string contains all the needles, false otherwise.
  ///
  /// Example usage:
  /// ```dart
  /// String text = 'Hello, world!';
  /// List<String> needles = ['hello', 'world'];
  /// bool containsAll = text.doesContainsAll(needles, true);
  /// print(containsAll); // Output: true
  /// ```
  bool doesContainsAll(
    List<String> needles, {
    bool ignoreCase = false,
  }) {
    return needles
        .every((needle) => doesContains(needle, ignoreCase: ignoreCase));
  }

  /// Checks if the string ends with the specified [search] string.
  ///
  /// Returns `true` if the string ends with [search], otherwise `false`.
  ///
  /// Internally, this method uses the [String.endsWith] method.
  /// This method is intended
  ///
  /// Example:
  /// ```dart
  /// String str = 'Hello, World!';
  /// bool endsWithWorld = doesEndsWith(str, 'World!');
  /// print(endsWithWorld); // Output: true
  ///
  /// bool endsWithUniverse = doesEndsWith(str, 'Universe');
  /// print(endsWithUniverse); // Output: false
  /// ```
  bool doesEndsWith(
    String search, {
    bool ignoreCase = false,
  }) {
    if (ignoreCase) {
      return toLowerCase().endsWith(search.toLowerCase());
    }

    return endsWith(search);
  }

  /// Checks if the string ends with any of the specified needles.
  ///
  /// This method takes a list of strings called [needles] and checks if the
  /// current string ends with any of the needles. It returns `true` if the
  /// string ends with any of the needles, and `false` otherwise.
  ///
  /// Example usage:
  /// ```dart
  /// String str = 'Hello, world!';
  /// List<String> needles = ['world!', 'universe'];
  /// bool endsWithAny = str.doesEndsWithAny(needles);
  /// print(endsWithAny); // Output: true
  /// ```
  bool doesEndsWithAny(
    List<String> needles, {
    bool ignoreCase = false,
  }) {
    return needles
        .any((needle) => doesEndsWith(needle, ignoreCase: ignoreCase));
  }

  /// Checks if the string starts with the specified [search] string.
  ///
  /// Returns `true` if the string starts with [search], otherwise `false`.
  bool doesStartsWith(
    String search, {
    bool ignoreCase = false,
  }) {
    if (ignoreCase) {
      return toLowerCase().startsWith(search.toLowerCase());
    }

    return startsWith(search);
  }

  /// Checks if the string starts with any of the specified needles.
  ///
  /// This method takes a list of strings called [needles] and checks if the
  /// current string starts with any of the needles. It returns `true` if the
  /// string starts with any of the needles, and `false` otherwise.
  bool doesStartsWithAny(List<String> needles, {bool ignoreCase = false}) {
    return needles
        .any((needle) => doesStartsWith(needle, ignoreCase: ignoreCase));
  }
}
