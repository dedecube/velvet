import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/velvet_support.dart';

void main() {
  test('CasesOnStringExtension - camel', () {
    expect('Laravel_p_h_p_framework'.camel(), 'laravelPHPFramework');
    expect('Laravel_php_framework'.camel(), 'laravelPhpFramework');
    expect('Laravel-phP-framework'.camel(), 'laravelPhPFramework');
    expect(
      'Laravel  -_-  php   -_-   framework   '.camel(),
      'laravelPhpFramework',
    );
    expect('FooBar'.camel(), 'fooBar');
    expect('foo_bar'.camel(), 'fooBar');
    expect('Foo-barBaz'.camel(), 'fooBarBaz');
    expect('foo-bar_baz'.camel(), 'fooBarBaz');
  });

  test('CasesOnStringExtension - kebab', () {
    expect('LaravelPhpFramework'.kebab(), 'laravel-php-framework');
    expect('Laravel Php Framework'.kebab(), 'laravel-php-framework');
    expect('Laravel ❤ Php Framework'.kebab(), 'laravel❤-php-framework');
    expect(''.kebab(), '');
  });

  test('CasesOnStringExtension - snake', () {
    expect('LaravelPhpFramework'.snake(), 'laravel_php_framework');
    expect('LaravelPhpFramework'.snake(' '), 'laravel php framework');
    expect('Laravel Php Framework'.snake(), 'laravel_php_framework');
    expect(
      'Laravel    Php      Framework   '.snake(),
      'laravel_php_framework',
    );
    expect('LaravelPhpFramework'.snake('__'), 'laravel__php__framework');
    expect('LaravelPhpFramework_'.snake('_'), 'laravel_php_framework_');
    expect('laravel php Framework'.snake(), 'laravel_php_framework');
    expect('laravel php FrameWork'.snake(), 'laravel_php_frame_work');
    expect('foo-bar'.snake(), 'foo-bar');
    expect('Foo-Bar'.snake(), 'foo-_bar');
    expect('Foo_Bar'.snake(), 'foo__bar');
    expect('ŻółtaŁódka'.snake(), 'żółtałódka');
  });

  test('CasesOnStringExtension - studly', () {
    expect('laravel_p_h_p_framework'.studly(), 'LaravelPHPFramework');
    expect('laravel_php_framework'.studly(), 'LaravelPhpFramework');
    expect('laravel-phP-framework'.studly(), 'LaravelPhPFramework');
    expect(
      'laravel  -_-  php   -_-   framework   '.studly(),
      'LaravelPhpFramework',
    );

    expect('fooBar'.studly(), 'FooBar');
    expect('foo_bar'.studly(), 'FooBar');
    expect('foo-barBaz'.studly(), 'FooBarBaz');
    expect('foo-bar_baz'.studly(), 'FooBarBaz');

    expect(
      'öffentliche-überraschungen'.studly(),
      'ÖffentlicheÜberraschungen',
    );
  });
}
