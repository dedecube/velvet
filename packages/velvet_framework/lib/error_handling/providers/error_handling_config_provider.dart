import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/error_handling/contracts/error_handling_config_contract.dart';

part 'error_handling_config_provider.g.dart';

@Riverpod(keepAlive: true)
ErrorHandlingConfigContract errorHandlingConfig(
  ErrorHandlingConfigRef ref,
) {
  throw UnimplementedError();
}
