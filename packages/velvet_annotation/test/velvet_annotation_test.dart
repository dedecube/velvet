import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

void main() {
  test('can instanciate VelvetAutoloader', () {
    const instance = VelvetAutoloader(glob: 'lib/**/*.dart');
    expect(instance, isNotNull);
  });
}
