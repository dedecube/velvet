import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/dev_inspector/contracts/dev_inspector_config_contract.dart';
import 'package:velvet_framework/dev_inspector/dev_inspector_config.dart';

part 'dev_inspector_config_provider.g.dart';

@Riverpod(dependencies: [])
DevInspectorConfigContract devInspectorConfig(DevInspectorConfigRef ref) {
  return DevInspectorConfig();
}
