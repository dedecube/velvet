import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/velvet_support.dart';

void main() {
  test('after', () {
    expect(Str.after('hannah', 'han'), 'nah');
    expect(Str.after('hannah', 'n'), 'nah');
    expect(Str.after('ééé hannah', 'han'), 'nah');
    expect(Str.after('hannah', 'xxxx'), 'hannah');
    expect(Str.after('hannah', ''), 'hannah');
    expect(Str.after('han0nah', '0'), 'nah');
    // expect(Str.after('han0nah', 0), 'nah'); // not supported in Dart, but supported in PHP
    // expect(Str.after('han2nah', 2), 'nah'); // not supported in Dart, but supported in PHP
  });

  test('afterLast', () {
    expect(Str.afterLast('yvette', 'yve'), 'tte');
    expect(Str.afterLast('yvette', 't'), 'e');
    expect(Str.afterLast('ééé yvette', 't'), 'e');
    expect(Str.afterLast('yvette', 'tte'), '');
    expect(Str.afterLast('yvette', 'xxxx'), 'yvette');
    expect(Str.afterLast('yvette', ''), 'yvette');
    expect(Str.afterLast('yv0et0te', '0'), 'te');
    // expect(Str.afterLast('yv0et0te', 0), 'te'); // not supported in Dart, but supported in PHP
    // expect(Str.afterLast('yv2et2te', 2), 'te'); // not supported in Dart, but supported in PHP
    expect(Str.afterLast('----foo', '---'), 'foo');
  });

  test('before', () {
    expect(Str.before('hannah', 'nah'), 'han');
    expect(Str.before('hannah', 'n'), 'ha');
    expect(Str.before('ééé hannah', 'han'), 'ééé ');
    expect(Str.before('hannah', 'xxxx'), 'hannah');
    expect(Str.before('hannah', ''), 'hannah');
    expect(Str.before('han0nah', '0'), 'han');
    // expect(Str.before('han0nah', 0), 'han'); // not supported in Dart, but supported in PHP
    // expect(Str.before('han2nah', 2), 'han'); // not supported in Dart, but supported in PHP
  });

  test('test beforeLast', () {
    expect(Str.beforeLast('yvette', 'tte'), 'yve');
    expect(Str.beforeLast('yvette', 't'), 'yvet');
    expect(Str.beforeLast('ééé yvette', 'yve'), 'ééé ');
    expect(Str.beforeLast('yvette', 'yve'), '');
    expect(Str.beforeLast('yvette', 'xxxx'), 'yvette');
    expect(Str.beforeLast('yvette', ''), 'yvette');
    expect(Str.beforeLast('yv0et0te', '0'), 'yv0et');
    // expect(Str.beforeLast('yv0et0te', 0), 'yv0et'); // not supported in Dart, but supported in PHP
    // expect(Str.beforeLast('yv2et2te', 2), 'yv2et'); // not supported in Dart, but supported in PHP
  });

  test('between', () {
    expect(Str.between('abc', '', 'c'), 'abc');
    expect(Str.between('abc', 'a', ''), 'abc');
    expect(Str.between('abc', '', ''), 'abc');
    expect(Str.between('abc', 'a', 'c'), 'b');
    expect(Str.between('dddabc', 'a', 'c'), 'b');
    expect(Str.between('abcddd', 'a', 'c'), 'b');
    expect(Str.between('dddabcddd', 'a', 'c'), 'b');
    expect(Str.between('hannah', 'ha', 'ah'), 'nn');
    expect(Str.between('[a]ab[b]', '[', ']'), 'a]ab[b');
    expect(Str.between('foofoobar', 'foo', 'bar'), 'foo');
    expect(Str.between('foobarbar', 'foo', 'bar'), 'bar');
  });

  test('betweenFirst', () {
    expect(Str.betweenFirst('abc', '', 'c'), 'abc');
    expect(Str.betweenFirst('abc', 'a', ''), 'abc');
    expect(Str.betweenFirst('abc', '', ''), 'abc');
    expect(Str.betweenFirst('abc', 'a', 'c'), 'b');
    expect(Str.betweenFirst('dddabc', 'a', 'c'), 'b');
    expect(Str.betweenFirst('abcddd', 'a', 'c'), 'b');
    expect(Str.betweenFirst('dddabcddd', 'a', 'c'), 'b');
    expect(Str.betweenFirst('hannah', 'ha', 'ah'), 'nn');
    expect(Str.betweenFirst('[a]ab[b]', '[', ']'), 'a');
    expect(Str.betweenFirst('foofoobar', 'foo', 'bar'), 'foo');
    expect(Str.betweenFirst('foobarbar', 'foo', 'bar'), '');
  });

  test('test camel', () {
    expect(Str.camel('Laravel_p_h_p_framework'), 'laravelPHPFramework');
    expect(Str.camel('Laravel_php_framework'), 'laravelPhpFramework');
    expect(Str.camel('Laravel-phP-framework'), 'laravelPhPFramework');
    expect(
      Str.camel('Laravel  -_-  php   -_-   framework   '),
      'laravelPhpFramework',
    );
    expect(Str.camel('FooBar'), 'fooBar');
    expect(Str.camel('foo_bar'), 'fooBar');
    expect(Str.camel('Foo-barBaz'), 'fooBarBaz');
    expect(Str.camel('foo-bar_baz'), 'fooBarBaz');
  });

  test('charAt', () {
    expect(Str.charAt('Привет, мир!', 1), 'р');
    expect(Str.charAt('「こんにちは世界」', 4), 'ち');
    expect(Str.charAt('Привет, world!', 8), 'w');
    expect(Str.charAt('「こんにちは世界」', -2), '界');
    expect(Str.charAt('「こんにちは世界」', -200), '');
    expect(Str.charAt('Привет, мир!', 100), '');
  });

  // TODO[epic=test]
  test('contains', () {});

// TODO[epic=test]
  test('containsAny', () {});

// TODO[epic=test]
  test('containsAll', () {});

// TODO[epic=test]
  test('endsWith', () {});

  // TODO[epic=test]
  test('endsWithAny', () {});

  // TODO[epic=test]
  test('excerpt', () {});

  test('test snake', () {
    expect(Str.snake('LaravelPhpFramework'), 'laravel_php_framework');
    expect(Str.snake('LaravelPhpFramework', ' '), 'laravel php framework');
    expect(Str.snake('Laravel Php Framework'), 'laravel_php_framework');
    expect(
      Str.snake('Laravel    Php      Framework   '),
      'laravel_php_framework',
    );
    expect(Str.snake('LaravelPhpFramework', '__'), 'laravel__php__framework');
    expect(Str.snake('LaravelPhpFramework_', '_'), 'laravel_php_framework_');
    expect(Str.snake('laravel php Framework'), 'laravel_php_framework');
    expect(Str.snake('laravel php FrameWork'), 'laravel_php_frame_work');
    expect(Str.snake('foo-bar'), 'foo-bar');
    expect(Str.snake('Foo-Bar'), 'foo-_bar');
    expect(Str.snake('Foo_Bar'), 'foo__bar');
    expect(Str.snake('ŻółtaŁódka'), 'żółtałódka');
  });

  test('test kebab', () {
    expect(Str.kebab('LaravelPhpFramework'), 'laravel-php-framework');
    expect(Str.kebab('Laravel Php Framework'), 'laravel-php-framework');
    expect(Str.kebab('Laravel ❤ Php Framework'), 'laravel❤-php-framework');
    expect(Str.kebab(''), '');
  });

  test('test studly', () {
    expect(Str.studly('laravel_p_h_p_framework'), 'LaravelPHPFramework');
    expect(Str.studly('laravel_php_framework'), 'LaravelPhpFramework');
    expect(Str.studly('laravel-phP-framework'), 'LaravelPhPFramework');
    expect(
      Str.studly('laravel  -_-  php   -_-   framework   '),
      'LaravelPhpFramework',
    );

    expect(Str.studly('fooBar'), 'FooBar');
    expect(Str.studly('foo_bar'), 'FooBar');
    expect(Str.studly('foo-barBaz'), 'FooBarBaz');
    expect(Str.studly('foo-bar_baz'), 'FooBarBaz');

    expect(
      Str.studly('öffentliche-überraschungen'),
      'ÖffentlicheÜberraschungen',
    );
  });

  test('lower', () {
    expect(Str.lower('FOO BAR BAZ'), 'foo bar baz');
    expect(Str.lower('fOo Bar bAz'), 'foo bar baz');
  });

  test('upper', () {
    expect(Str.upper('foo bar baz'), 'FOO BAR BAZ');
    expect(Str.upper('foO bAr BaZ'), 'FOO BAR BAZ');
  });
}
