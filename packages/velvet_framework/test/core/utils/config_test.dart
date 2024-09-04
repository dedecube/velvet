import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  setUp(() {
    container.registerSingleton<VelvetLoggerContract>(
      VelvetLogger(),
    );
  });

  test('config should returns a VelvetConfig', () async {
    final loggerConfig = config<VelvetLoggerConfigContract>();
    expect(loggerConfig, isA<VelvetConfig>());
  });
}
