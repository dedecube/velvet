import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/velvet_support.dart';

void main() {
  group('CasesOnStringExtension', () {
    test('camel', () {
      expect(
        'Velvet_f_l_u_t_t_e_r_framework'.camel(),
        'velvetFLUTTERFramework',
      );
      expect('Velvet_flutter_framework'.camel(), 'velvetFlutterFramework');
      expect('Velvet-flutteR-framework'.camel(), 'velvetFlutteRFramework');
      expect(
        'Velvet  -_-  flutter   -_-   framework   '.camel(),
        'velvetFlutterFramework',
      );
      expect('FooBar'.camel(), 'fooBar');
      expect('foo_bar'.camel(), 'fooBar');
      expect('Foo-barBaz'.camel(), 'fooBarBaz');
      expect('foo-bar_baz'.camel(), 'fooBarBaz');
    });

    test('kebab', () {
      expect('VelvetFlutterFramework'.kebab(), 'velvet-flutter-framework');
      expect('Velvet Flutter Framework'.kebab(), 'velvet-flutter-framework');
      expect('Velvet ❤ Flutter Framework'.kebab(), 'velvet❤-flutter-framework');
      expect(''.kebab(), '');
    });

    test('snake', () {
      expect('VelvetFlutterFramework'.snake(), 'velvet_flutter_framework');
      expect('VelvetFlutterFramework'.snake(' '), 'velvet flutter framework');
      expect('Velvet Flutter Framework'.snake(), 'velvet_flutter_framework');
      expect(
        'Velvet    Flutter      Framework   '.snake(),
        'velvet_flutter_framework',
      );
      expect(
        'VelvetFlutterFramework'.snake('__'),
        'velvet__flutter__framework',
      );
      expect('VelvetFlutterFramework_'.snake('_'), 'velvet_flutter_framework_');
      expect('velvet flutter Framework'.snake(), 'velvet_flutter_framework');
      expect('velvet flutter FrameWork'.snake(), 'velvet_flutter_frame_work');
      expect('foo-bar'.snake(), 'foo-bar');
      expect('Foo-Bar'.snake(), 'foo-_bar');
      expect('Foo_Bar'.snake(), 'foo__bar');
      expect('ŻółtaŁódka'.snake(), 'żółtałódka');
    });

    test('studly', () {
      expect(
        'velvet_f_l_u_t_t_e_r_framework'.studly(),
        'VelvetFLUTTERFramework',
      );
      expect('velvet_flutter_framework'.studly(), 'VelvetFlutterFramework');
      expect('velvet-flutteR-framework'.studly(), 'VelvetFlutteRFramework');
      expect(
        'velvet  -_-  flutter   -_-   framework   '.studly(),
        'VelvetFlutterFramework',
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
  });
}
