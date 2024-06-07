import 'package:riverpod/riverpod.dart';

class VelvetConfig<T> {
  const VelvetConfig({required this.provider});

  final T Function(ProviderRef<T> ref) provider;
}
