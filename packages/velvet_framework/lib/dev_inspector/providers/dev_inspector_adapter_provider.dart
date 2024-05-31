import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:velvet_framework/dev_inspector/adapters/dev_inspector_talker_adapter.dart';
import 'package:velvet_framework/dev_inspector/contracts/dev_inspector_adapter_contract.dart';

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
@Riverpod(dependencies: [])
DevInspectorAdapterContract devInspectorAdapter(DevInspectorAdapterRef ref) {
  return DevInspectorTalkerAdapter();
}
