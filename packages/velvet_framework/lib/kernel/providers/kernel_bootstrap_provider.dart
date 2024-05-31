import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kernel_bootstrap_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
Future<void> kernelBootstrap(KernelBootstrapRef ref) async {
  return Future.value();
}
