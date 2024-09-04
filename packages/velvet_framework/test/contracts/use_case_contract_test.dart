import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  test('UseCaseContract execute returns correct result', () async {
    final useCase = MockUseCaseContract();
    const expected = 'Mock result';

    final result = await useCase.execute();

    expect(result, expected);
  });
}

class MockUseCaseContract implements UseCaseContract<void> {
  @override
  Future<String> execute() async {
    return 'Mock result';
  }
}
