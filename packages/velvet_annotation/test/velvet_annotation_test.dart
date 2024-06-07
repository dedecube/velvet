import 'package:test/test.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

void main() {
  test('can instanciate VelvetBootstrap', () {
    final instance = VelvetBootstrap();
    expect(instance, isNotNull);
  });

  test('is instance of VelvetBootstrap', () {
    final instance = velvetBootstrap;
    expect(instance, isA<VelvetBootstrap>());
  });

  test('can instanciate VelvetConfig', () {
    final instance = VelvetConfig();
    expect(instance, isNotNull);
  });

  test('is instance of VelvetConfig', () {
    final instance = velvetConfig;
    expect(instance, isA<VelvetConfig>());
  });
}
