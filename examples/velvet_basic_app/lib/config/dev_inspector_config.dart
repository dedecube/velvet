import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

@VelvetConfig(provider: devInspectorConfig)
class DevInspectorConfig extends DevInspectorConfigContract {
  @override
  bool get isEnabled => true;

  @override
  int get tapCount => 3;
}
