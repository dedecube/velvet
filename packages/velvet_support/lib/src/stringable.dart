import 'str.dart';

class Stringable {
  final String value;

  Stringable(this.value);

  Stringable after(String search) {
    return Stringable(Str.after(value, search));
  }

  Stringable afterLast(String search) {
    return Stringable(Str.afterLast(value, search));
  }

  Stringable before(String search) {
    return Stringable(Str.before(value, search));
  }

  Stringable beforeLast(String search) {
    return Stringable(Str.beforeLast(value, search));
  }

  Stringable between(String start, String end) {
    return Stringable(Str.between(value, start, end));
  }

  Stringable betweenFirst(String start, String end) {
    return Stringable(Str.betweenFirst(value, start, end));
  }

  Stringable camel() {
    return Stringable(Str.camel(value));
  }

  Stringable lower() {
    return Stringable(Str.lower(value));
  }

  Stringable upper() {
    return Stringable(Str.upper(value));
  }

  Stringable snake([String delimiter = '_']) {
    return Stringable(Str.snake(value, delimiter));
  }

  Stringable kebab() {
    return Stringable(Str.kebab(value));
  }

  Stringable studly() {
    return Stringable(Str.studly(value));
  }

  @override
  String toString() {
    return value;
  }
}
