import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/src/extensions/string/ensure_on_string_extension.dart';

void main() {
  group('EnsureOnStringExtension', () {
    test('ensureStartsWith', () {
      expect('api/example'.ensureStartsWith('/'), '/api/example');
      expect('/api/example'.ensureStartsWith('/'), '/api/example');
    });

    test('ensureEndsWith', () {
      expect('api/example'.ensureEndsWith('/'), 'api/example/');
      expect('api/example/'.ensureEndsWith('/'), 'api/example/');
    });

    test('ensureDoNotStartWith', () {
      expect('/api/example'.ensureDoNotStartWith('/'), 'api/example');
      expect('api/example'.ensureDoNotStartWith('/'), 'api/example');
    });

    test('ensureDoNotEndWith', () {
      expect('api/example/'.ensureDoNotEndWith('/'), 'api/example');
      expect('api/example'.ensureDoNotEndWith('/'), 'api/example');
    });

    test('ensureWrappedWith', () {
      expect('example'.ensureWrappedWith('/'), '/example/');
      expect('/example'.ensureWrappedWith('/'), '/example/');
      expect('/example/'.ensureWrappedWith('/'), '/example/');
    });

    test('ensureWrappedWithSingleQuotes', () {
      expect('example'.ensureWrappedWithSingleQuotes(), "'example'");
      expect("'example'".ensureWrappedWithSingleQuotes(), "'example'");
    });

    test('ensureWrappedWithDoubleQuotes', () {
      expect('example'.ensureWrappedWithDoubleQuotes(), '"example"');
      expect('"example"'.ensureWrappedWithDoubleQuotes(), '"example"');
    });

    test('ensureWrappedWithParentheses', () {
      expect('example'.ensureWrappedWithParentheses(), '(example)');
      expect('(example)'.ensureWrappedWithParentheses(), '(example)');
    });

    test('ensureWrappedWithBrackets', () {
      expect('example'.ensureWrappedWithBrackets(), '[example]');
      expect('[example]'.ensureWrappedWithBrackets(), '[example]');
    });

    test('ensureWrappedWithBraces', () {
      expect('example'.ensureWrappedWithBraces(), '{example}');
      expect('{example}'.ensureWrappedWithBraces(), '{example}');
    });

    test('ensureWrappedWithAngleBrackets', () {
      expect('example'.ensureWrappedWithAngleBrackets(), '<example>');
      expect('<example>'.ensureWrappedWithAngleBrackets(), '<example>');
    });

    test('ensureWrappedWithChevrons', () {
      expect('example'.ensureWrappedWithChevrons(), '«example»');
      expect('«example»'.ensureWrappedWithChevrons(), '«example»');
    });

    test('ensureWrappedWithCurlyQuotes', () {
      expect('example'.ensureWrappedWithCurlyQuotes(), '“example”');
      expect('“example”'.ensureWrappedWithCurlyQuotes(), '“example”');
    });
  });
}
