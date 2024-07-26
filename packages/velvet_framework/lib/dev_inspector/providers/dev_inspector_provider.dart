import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/dev_inspector/dev_inspector.dart';
import 'package:velvet_framework/dev_inspector/providers/dev_inspector_adapter_provider.dart';
import 'package:velvet_framework/dev_inspector/providers/dev_inspector_config_provider.dart';

part 'dev_inspector_provider.g.dart';

/// Provider for the [DevInspector].
///
/// This provider can be used to obtain an instance of [DevInspector] throughout the app.
///
/// If you want to provide a different implementation of [DevInspector], you can override this provider.
@Riverpod(
  keepAlive: true,
  dependencies: [devInspectorAdapter, devInspectorConfig],
)
DevInspector devInspector(DevInspectorRef ref) {
  var adapter = ref.read(devInspectorAdapterProvider);
  var config = ref.read(devInspectorConfigProvider);

  return DevInspector(config, adapter);
}
