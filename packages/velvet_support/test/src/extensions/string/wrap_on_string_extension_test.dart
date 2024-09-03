import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/src/extensions/string/wrap_on_string_extension.dart';

void main() {
  group('WrapOnStringExtension', () {
    test('wrap', () {
      expect('hannah'.wrap('(', ')'), '(hannah)');
    });

    test('wrapWith', () {
      expect('hannah'.wrapWith('['), '[hannah[');
    });

    test('wrapWithSingleQuotes', () {
      expect('hannah'.wrapWithSingleQuotes(), "'hannah'");
    });

    test('wrapWithDoubleQuotes', () {
      expect('hannah'.wrapWithDoubleQuotes(), '"hannah"');
    });

    test('wrapWithParentheses', () {
      expect('hannah'.wrapWithParentheses(), '(hannah)');
    });

    test('wrapWithBrackets', () {
      expect('hannah'.wrapWithBrackets(), '[hannah]');
    });

    test('wrapWithBraces', () {
      expect('hannah'.wrapWithBraces(), '{hannah}');
    });

    test('wrapWithAngleBrackets', () {
      expect('hannah'.wrapWithAngleBrackets(), '<hannah>');
    });

    test('wrapWithChevrons', () {
      expect('hannah'.wrapWithChevrons(), '«hannah»');
    });
  });
}
