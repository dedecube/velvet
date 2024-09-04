extension EnsureOnStringExtension on String {
  /// Ensures that the string starts with the specified [prefix].
  ///
  /// If the string does not start with the [prefix], it is prepended to the string.
  /// Otherwise, the original string is returned.
  ///
  /// Returns the modified string.
  String ensureStartsWith(String prefix) {
    if (!startsWith(prefix)) {
      return prefix + this;
    }

    return this;
  }

  /// Ensures that the string ends with the specified [suffix].
  ///
  /// If the string does not already end with the [suffix], it appends the [suffix] to the string and returns the modified string.
  /// If the string already ends with the [suffix], it returns the original string.
  String ensureEndsWith(String suffix) {
    if (!endsWith(suffix)) {
      return this + suffix;
    }

    return this;
  }

  /// Ensures that the string does not start with the specified [prefix].
  /// If the string starts with the [prefix], it is removed from the string.
  /// Otherwise, the original string is returned.
  String ensureDoNotStartWith(String prefix) {
    if (startsWith(prefix)) {
      return substring(prefix.length);
    }

    return this;
  }

  /// Ensures that the string does not end with the specified [suffix].
  /// If the string ends with the [suffix], it is removed from the string.
  /// Otherwise, the original string is returned.
  String ensureDoNotEndWith(String suffix) {
    if (endsWith(suffix)) {
      return substring(0, length - suffix.length);
    }

    return this;
  }

  /// Ensures that the string is wrapped with the specified [wrapper].
  ///
  /// If the string does not start with the [wrapper], it is prepended to the string.
  /// If the string does not end with the [wrapper], it is appended to the string.
  /// Otherwise, the original string is returned.
  String ensureWrappedWith(String wrapper) {
    return ensureStartsWith(wrapper).ensureEndsWith(wrapper);
  }

  /// Ensures that the string is wrapped with single quotes.
  ///
  /// Returns the modified string.

  String ensureWrappedWithSingleQuotes() {
    return ensureStartsWith("'").ensureEndsWith("'");
  }

  /// Ensures that the string is wrapped with double quotes.
  ///
  /// Returns the string with double quotes added at the beginning and end.
  String ensureWrappedWithDoubleQuotes() {
    return ensureStartsWith('"').ensureEndsWith('"');
  }

  /// Ensures that the string is wrapped with parentheses.
  ///
  /// Returns a new string that starts with '(' and ends with ')'.
  String ensureWrappedWithParentheses() {
    return ensureStartsWith('(').ensureEndsWith(')');
  }

  /// Ensures that the string is wrapped with brackets.
  ///
  /// Returns the modified string that starts with '[' and ends with ']'.
  String ensureWrappedWithBrackets() {
    return ensureStartsWith('[').ensureEndsWith(']');
  }

  /// Ensures that the string is wrapped with braces.
  ///
  /// Returns a new string that starts with '{' and ends with '}'.
  String ensureWrappedWithBraces() {
    return ensureStartsWith('{').ensureEndsWith('}');
  }

  /// Ensures that the string is wrapped with angle brackets.
  ///
  /// Returns the modified string.
  String ensureWrappedWithAngleBrackets() {
    return ensureStartsWith('<').ensureEndsWith('>');
  }

  /// Ensures that the string is wrapped with chevrons.
  ///
  /// Returns the modified string that starts with '«' and ends with '»'.
  String ensureWrappedWithChevrons() {
    return ensureStartsWith('«').ensureEndsWith('»');
  }

  /// Ensures that the string is wrapped with curly quotes.
  /// Returns the modified string that starts with '“' and ends with '”'.
  String ensureWrappedWithCurlyQuotes() {
    return ensureStartsWith('“').ensureEndsWith('”');
  }
}
