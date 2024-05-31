/// Check if the string is lower case.
///
/// This function is similar to ctype_lower in PHP.
///
/// Example:
/// ```dart
/// print(isLower('hello')); // true
/// print(isLower('Hello')); // false
/// ```
bool isLower(String value) {
  return RegExp(r'^[a-z]+$').hasMatch(value);
}
