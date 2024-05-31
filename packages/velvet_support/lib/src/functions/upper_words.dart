/// This function converts the first letter of each word in a string to uppercase.
/// Optionally, a custom separator can be provided.
///
/// This method is similar to ucwords in PHP.
///
/// Example:
/// ```dart
/// print(upperWords('hello world')); // Hello World
/// print(upperWords('hello_world', '_')); // Hello World
/// ```
String upperWords(String input, [String separator = " \t\r\n\f\v"]) {
  List<String> words = input.split(RegExp('[$separator]'));
  StringBuffer result = StringBuffer();

  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      result.write(word.substring(0, 1).toUpperCase());
      result.write(word.substring(1));
      if (i < words.length - 1) {
        result.write(' ');
      }
    }
  }

  return result.toString();
}
