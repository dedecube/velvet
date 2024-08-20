import 'package:dev_panel_velvet_plugin/src/adapters/dev_inspector_talker_adapter.dart';
import 'package:dev_panel_velvet_plugin/src/contracts/dev_inspector_adapter_contract.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

part 'dev_inspector_adapter_provider.g.dart';

/// Provider for the [DevInspectorAdapterContract].
///
/// This provider can be used to obtain an instance of [DevInspectorAdapterContract].
///
/// If you want to provide a different implementation of [DevInspectorAdapterContract],
/// you can override this provider.
///
/// Example:
/// ```
/// void main() {
///   runApp(
///     ProviderScope(
///       overrides: [
///         devInspectorAdapter.overrideWithValue(DevInspectorAdapterTalker()),
///       ],
///       child: MyApp(),
///     ),
///   );
/// }
/// ```
/// FIXME[epic=get-it] - Convert to get_it
@Riverpod(dependencies: [])
DevInspectorAdapterContract devInspectorAdapter(DevInspectorAdapterRef ref) {
  return DevInspectorTalkerAdapter();
}
