import 'package:riverpod/riverpod.dart';
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
    final fakeProvider = Provider((ref) => 'fake');
    final instance = VelvetConfig(provider: (ref) => fakeProvider);

    expect(instance, isNotNull);
  });
}
