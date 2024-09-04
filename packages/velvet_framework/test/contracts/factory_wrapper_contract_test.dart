import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  test('FactoryWrapperContract should have a factory getter', () {
    final wrapper = MockFactoryWrapperContract();
    expect(wrapper.factory, isA<Function>());
  });
}

class MockFactoryWrapperContract extends FactoryWrapperContract {
  @override
  Function get factory => () {
        return;
      };
}
