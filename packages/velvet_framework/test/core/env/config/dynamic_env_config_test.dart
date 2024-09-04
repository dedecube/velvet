import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  test('DynamicEnvConfig initialization with isEnabled true', () {
    final config = DynamicEnvConfig(isEnabled: true);
    expect(config.isEnabled, true);
  });

  test('DynamicEnvConfig initialization with isEnabled false', () {
    final config = DynamicEnvConfig(isEnabled: false);
    expect(config.isEnabled, false);
  });
}
