extension WrapOnStringExtension on String {
  String wrap(String start, String end) {
    return start + this + end;
  }

  String wrapWith(String wrapper) {
    return wrapper + this + wrapper;
  }

  String wrapWithSingleQuotes() {
    return wrapWith("'");
  }

  String wrapWithDoubleQuotes() {
    return wrapWith('"');
  }

  String wrapWithParentheses() {
    return wrap('(', ')');
  }

  String wrapWithBrackets() {
    return wrap('[', ']');
  }

  String wrapWithBraces() {
    return wrap('{', '}');
  }

  String wrapWithAngleBrackets() {
    return wrap('<', '>');
  }

  String wrapWithChevrons() {
    return wrap('«', '»');
  }
}
