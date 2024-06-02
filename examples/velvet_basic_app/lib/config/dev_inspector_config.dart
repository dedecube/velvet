import 'package:velvet_framework/velvet_framework.dart';

class DevInspectorConfig implements DevInspectorConfigContract {
  @override
  bool get isEnabled => true;

  @override
  int get tapCount => 3;
}
