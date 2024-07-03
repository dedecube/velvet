import 'package:riverpod/riverpod.dart';

typedef ConfigCreate<T, R extends ProviderRef> = T Function(R ref);

class ConfigBinder {
  ConfigBinder({
    required this.abstract,
    required this.concrete,
  });

  final Provider abstract;
  final ConfigCreate concrete;
}
