import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  setUp(() {
    container.registerSingleton<VelvetConfigManagerContract>(
      VelvetConfigManager(),
    );
  });

  test('configManager should return a VelvetConfigManagerContract', () {
    final manager = configManager();
    expect(manager, isA<VelvetConfigManagerContract>());
  });
}
