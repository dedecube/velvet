import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/src/extensions/map/dot_notation_on_map_extension.dart';

void main() {
  var map = {
    'my': {
      'example': 'hello',
      'list': ['item1', 'item2'],
    },
  };

  test('DotNotationOnMapExtension - get', () {
    expect(map.get<String>(key: 'my.example', defaultValue: null), 'hello');
    expect(
      map.get<List>(key: 'my.list', defaultValue: null),
      ['item1', 'item2'],
    );
    expect(map.get<String>(key: 'my.list.0', defaultValue: null), 'item1');
    expect(map.get<String>(key: 'my.list.1', defaultValue: null), 'item2');
    expect(map.get<String>(key: 'my.list.2', defaultValue: null), null);
    expect(
      map.get<String>(key: 'my.list.{first}', defaultValue: null),
      'item1',
    );
    expect(map.get<String>(key: 'my.list.{last}', defaultValue: null), 'item2');
  });

  test('DotNotationOnMapExtension - set', () {
    map.set(key: 'my.new.key', value: 'new value');
    expect(map.get<String>(key: 'my.new.key', defaultValue: null), 'new value');

    map.set(key: 'my.new.list.0', value: 'item0');
    map.set(key: 'my.new.list.1', value: 'item1');
    expect(
      map.get<List?>(key: 'my.new.list', defaultValue: null),
      ['item0', 'item1'],
    );
  });

  test('DotNotationOnMapExtension - fill from empty map', () {
    var emptyMap = {};
    emptyMap.set(key: 'my.example.0', value: 'hello');
    expect(emptyMap, {
      'my': {
        'example': ['hello'],
      },
    });
  });
}
