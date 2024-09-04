import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  test('EnvReadEvent initialization', () {
    const content = 'sample content';
    final event = EnvReadEvent(content);

    expect(event, isNotNull);
    expect(event.content, equals(content));
  });

  test('EnvReadEvent content property', () {
    const content = 'another sample content';
    final event = EnvReadEvent(content);

    expect(event.content, equals(content));
  });
}
