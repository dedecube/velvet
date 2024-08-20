import 'package:dev_panel_velvet_plugin/src/contracts/dev_inspector_config_contract.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

part 'dev_inspector_config_provider.g.dart';

// FIXME[epic=get-it] - Convert to get_it
@Riverpod(keepAlive: true, dependencies: [])
DevInspectorConfigContract devInspectorConfig(DevInspectorConfigRef ref) {
  throw UnimplementedError();
}
