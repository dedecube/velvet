import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/src/extensions/map/dot_notation_on_map_extension.dart';

void main() {
  group('DotNotationOnMapExtension - get', () {
    late Map<String, dynamic> map;

    setUp(() {
      map = {
        'my': {
          'example': 'hello',
          'list': ['item1', 'item2'],
          'nestedList': [
            {'name': 'first'},
            {'name': 'second'},
          ],
        },
        'simpleArray': ['a', 'b', 'c'],
      };
    });

    test('Retrieve simple values', () {
      expect(map.get<String>(key: 'my.example'), 'hello');
      expect(
        map.get<String>(key: 'non.existent.key', defaultValue: 'default'),
        'default',
      );
    });

    test('Retrieve values from lists', () {
      expect(map.get<List>(key: 'my.list'), ['item1', 'item2']);
      expect(map.get<String>(key: 'my.list.0'), 'item1');
      expect(map.get<String>(key: 'my.list.1'), 'item2');
      expect(
        map.get<String>(key: 'my.list.2', defaultValue: 'default'),
        'default',
      );
    });

    test('Retrieve first and last elements', () {
      expect(map.get<String>(key: 'my.list.{first}'), 'item1');
      expect(map.get<String>(key: 'my.list.{last}'), 'item2');
    });

    test('Retrieve values from nested lists', () {
      expect(map.get<String>(key: 'my.nestedList.0.name'), 'first');
      expect(map.get<String>(key: 'my.nestedList.1.name'), 'second');
      expect(
        map.get<String>(key: 'my.nestedList.2.name', defaultValue: 'default'),
        'default',
      );
    });

    test('Handle array index out of bounds', () {
      expect(
        map.get<String>(key: 'simpleArray.5', defaultValue: 'default'),
        'default',
      );
    });

    test('Handle incorrect type', () {
      expect(() => map.get<int>(key: 'my.example'), throwsA(isA<TypeError>()));
    });
  });

  group('DotNotationOnMapExtension - set', () {
    late Map<String, dynamic> map;

    setUp(() {
      map = {
        'my': {
          'example': 'hello',
          'list': ['item1', 'item2'],
        },
      };
    });

    test('Set simple values', () {
      map.set(key: 'my.new.key', value: 'new value');
      expect(map.get<String>(key: 'my.new.key'), 'new value');
    });

    test('Set values in lists', () {
      map.set(key: 'my.new.list.0', value: 'item0');
      map.set(key: 'my.new.list.1', value: 'item1');
      expect(map.get<List?>(key: 'my.new.list'), ['item0', 'item1']);
    });

    test('Set values in nested lists', () {
      map.set(key: 'my.new.nestedList.0.name', value: 'newFirst');
      map.set(key: 'my.new.nestedList.1.name', value: 'newSecond');
      expect(
        map.get<List?>(key: 'my.new.nestedList'),
        [
          {'name': 'newFirst'},
          {'name': 'newSecond'},
        ],
      );
    });

    test('Expand lists and set values', () {
      map.set(key: 'my.new.list.3', value: 'item3');
      expect(map.get<List?>(key: 'my.new.list'), [null, null, null, 'item3']);
    });

    test('Set value in an empty map', () {
      var emptyMap = <String, dynamic>{};
      emptyMap.set(key: 'my.example.0', value: 'hello');
      expect(emptyMap, {
        'my': {
          'example': ['hello'],
        },
      });
    });

    test('Overwrite existing values', () {
      map.set(key: 'my.example', value: 'goodbye');
      expect(map.get<String>(key: 'my.example'), 'goodbye');

      map.set(key: 'my.list.0', value: 'newItem1');
      expect(map.get<String>(key: 'my.list.0'), 'newItem1');
    });

    test('Set complex structures', () {
      map.set(key: 'my.deep.structure.key', value: 'value');
      expect(map.get<String>(key: 'my.deep.structure.key'), 'value');

      map.set(key: 'my.deep.structure.list.0', value: 'item0');
      expect(map.get<List?>(key: 'my.deep.structure.list'), ['item0']);
    });

    test('Set values with mixed types', () {
      map.set(key: 'my.mixed.list.0', value: 'string');
      map.set(key: 'my.mixed.list.1', value: 123);
      map.set(key: 'my.mixed.list.2', value: {'key': 'value'});

      expect(map.get<String>(key: 'my.mixed.list.0'), 'string');
      expect(map.get<int>(key: 'my.mixed.list.1'), 123);
      expect(map.get<Map>(key: 'my.mixed.list.2'), {'key': 'value'});
    });
  });

  group('DotNotationOnMapExtension - edge cases', () {
    late Map<String, dynamic> map;

    setUp(() {
      map = {};
    });

    test('Set and get with single key', () {
      map.set(key: 'singleKey', value: 'singleValue');
      expect(map.get<String>(key: 'singleKey'), 'singleValue');
    });

    test('Set and get with complex keys', () {
      map.set(key: 'key.with.dots', value: 'valueWithDots');
      expect(map.get<String>(key: 'key.with.dots'), 'valueWithDots');
    });

    test('Set and get with numeric keys in a map', () {
      map.set(key: 'map.123', value: 'numericKey');
      expect(map.get<String>(key: 'map.123'), 'numericKey');
    });

    test('Set and get with empty key', () {
      map.set(key: '', value: 'emptyKey');
      expect(map.get<String>(key: '', defaultValue: 'default'), 'default');
    });

    test('Set and get with null value', () {
      map.set(key: 'nullableKey', value: null);
      expect(
        map.get<String>(key: 'nullableKey', defaultValue: 'default'),
        null,
      );
    });
  });
}
