// ignore_for_file: boolean_prefixes
import 'package:velvet_support/src/functions/first_lower.dart';
import 'package:velvet_support/src/functions/first_upper.dart';
import 'package:velvet_support/src/functions/is_lower.dart';
import 'package:velvet_support/src/functions/upper_words.dart';

import 'stringable.dart';

class Str {
  static Stringable of(String value) {
    return Stringable(value);
  }

  static String after(String subject, String search) {
    if (search.isEmpty || !subject.contains(search)) {
      return subject;
    }

    return subject.substring(subject.indexOf(search, 0) + search.length);
  }

  static String afterLast(String subject, String search) {
    if (search.isEmpty || !subject.contains(search)) {
      return subject;
    }

    return subject.substring(subject.lastIndexOf(search) + search.length);
  }

  static String before(String subject, String search) {
    if (search.isEmpty || !subject.contains(search)) {
      return subject;
    }

    return subject.substring(0, subject.indexOf(search));
  }

  static String beforeLast(String subject, String search) {
    if (search.isEmpty || !subject.contains(search)) {
      return subject;
    }

    return subject.substring(0, subject.lastIndexOf(search));
  }

  static String between(String subject, String start, String end) {
    if (start.isEmpty || end.isEmpty) {
      return subject;
    }

    return beforeLast(after(subject, start), end);
  }

  static String betweenFirst(String subject, String start, String end) {
    if (start.isEmpty || end.isEmpty) {
      return subject;
    }

    return before(after(subject, start), end);
  }

  static String camel(String value) {
    return firstLower(studly(value));
  }

  static String charAt(String value, int index) {
    if (index < 0 ? index < -value.length : index > value.length - 1) {
      return '';
    }

    if (index < 0) {
      index = value.length + index;
    }

    return value.substring(index, index + 1);
  }

  static bool contains(String value, String search, [bool ignoreCase = false]) {
    if (ignoreCase) {
      value = lower(value);
      search = lower(search);
    }

    return value.contains(search);
  }

  static bool containsAny(
    String value,
    List<String> needles, [
    bool ignoreCase = false,
  ]) {
    if (ignoreCase) {
      value = lower(value);
      needles = needles.map((needle) => lower(needle)).toList();
    }

    return needles.any((needle) => value.contains(needle));
  }

  static bool containsAll(
    String value,
    List<String> needles, [
    bool ignoreCase = false,
  ]) {
    if (ignoreCase) {
      value = lower(value);
      needles = needles.map((needle) => lower(needle)).toList();
    }

    return needles.every((needle) => value.contains(needle));
  }

  static bool endsWith(
    String value,
    String search,
  ) {
    return value.endsWith(search);
  }

  static bool endsWithAny(String value, List<String> needles) {
    return needles.any((needle) => value.endsWith(needle));
  }

  static String excerpt(
    String value, [
    String phrase = '',
    int radius = 100,
    String omission = '...',
  ]) {
    if (value.isEmpty) {
      return '';
    }

    if (phrase.isEmpty) {
      return value;
    }

    int pos = value.indexOf(phrase);

    if (pos == -1) {
      return value;
    }

    int start = pos - radius;
    int end = pos + phrase.length + radius;

    if (start < 0) {
      start = 0;
    }

    if (end > value.length) {
      end = value.length;
    }

    String excerpt = value.substring(start, end);

    if (start != 0) {
      int pos = excerpt.indexOf(' ');

      if (pos != -1) {
        excerpt = excerpt.substring(pos);
      }
    }

    if (end != value.length) {
      int pos = excerpt.lastIndexOf(' ');

      if (pos != -1) {
        excerpt = excerpt.substring(0, pos);
      }
    }

    return '$omission$excerpt$omission';
  }

  static String lower(String value) {
    return value.toLowerCase();
  }

  static String upper(String value) {
    return value.toUpperCase();
  }

  /// Convert a string to snake case.
  static String snake(String value, [String delimiter = '_']) {
    if (!isLower(value)) {
      value = upperWords(value).replaceAll(RegExp(r'\s+'), '');

      value = lower(
        value.replaceAllMapped(RegExp(r'(.)(?=[A-Z])'), (match) {
          return '${match.group(1)}$delimiter';
        }),
      );
    }

    return value;
  }

  static String kebab(String value) {
    return snake(value, '-');
  }

  static String studly(String value) {
    List<String> words = value.replaceAll(RegExp(r'[-,_]'), ' ').split(' ');

    return words.map((word) => firstUpper(word)).toList().join();
  }
}
