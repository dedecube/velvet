import 'package:velvet_framework/velvet_framework.dart';

class FixedLengthRule extends Rule<String> {
  FixedLengthRule(this.length);

  final int length;

  @override
  String? isValid(value) {
    if (value.length != length) {
      return translate(
        'validation.fixed_length',
        args: {'length': length.toString()},
      );
    }

    return null;
  }
}
