extension BoundsOnStringExtension on String {
  /// Returns the substring that occurs after the first occurrence of the specified [search] string.
  ///
  /// If the [search] string is empty or not found in the original string, the original string is returned.
  ///
  /// Example:
  /// ```dart
  /// String str = 'Hello, World!';
  /// String result = str.after('Hello, ');
  /// print(result); // Output: 'World!'
  /// ```
  String after(String search) {
    if (search.isEmpty || !contains(search)) {
      return this;
    }

    return substring(indexOf(search, 0) + search.length);
  }

  /// Returns the substring that occurs after the last occurrence of the specified [search] string.
  ///
  /// If the [search] string is empty or not found in the original string, the original string is returned.
  ///
  /// Example:
  /// ```dart
  /// String str = 'Hello, World! This, maybe, is a test';
  /// String result = str.afterLast(',');
  /// print(result); // Output: ' is a test!'
  /// ```
  String afterLast(String search) {
    if (search.isEmpty || !contains(search)) {
      return this;
    }

    return substring(lastIndexOf(search) + search.length);
  }

  /// Returns the substring of this string that occurs before the first occurrence of the specified [search] string.
  ///
  /// If the [search] string is empty or not found in this string, the original string is returned.
  ///
  /// Example:
  /// ```dart
  /// String str = 'Hello, World!';
  /// String result = str.before('World');
  /// print(result); // Output: 'Hello, '
  /// ```
  String before(String search) {
    if (search.isEmpty || !contains(search)) {
      return this;
    }

    return substring(0, indexOf(search));
  }

  /// Returns a new string that contains all characters before the last occurrence of [search].
  /// If [search] is not found or is an empty string, the original string is returned.
  ///
  /// Example:
  /// ```dart
  /// String str = 'Hello, World!';
  /// String result = str.beforeLast('o');
  /// print(result); // Output: 'Hello, W'
  /// ```
  String beforeLast(String search) {
    if (search.isEmpty || !contains(search)) {
      return this;
    }

    return substring(0, lastIndexOf(search));
  }

  /// Returns the substring between the first occurrence of [start] and the last occurrence of [end].
  /// If either [start] or [end] is empty, it returns the original string.
  ///
  /// Example:
  /// ```dart
  /// String text = "Hello [world]!";
  /// String result = text.between("[", "]");
  /// print(result); // Output: "world"
  /// ```
  String between(String start, String end) {
    if (start.isEmpty || end.isEmpty) {
      return this;
    }

    return after(start).beforeLast(end);
  }

  /// Returns the substring between the first occurrence of [start] and the first occurrence of [end].
  /// If either [start] or [end] is empty, it returns the original string.
  ///
  /// Example:
  /// ```dart
  /// String text = "Hello [World], [Daniele]!";
  /// String result = text.betweenFirst("[", "]");
  /// print(result); // Output: "World"
  /// ```
  String betweenFirst(String start, String end) {
    if (start.isEmpty || end.isEmpty) {
      return this;
    }

    return after(start).before(end);
  }
}
