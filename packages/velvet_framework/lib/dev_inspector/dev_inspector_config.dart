import 'package:envied/envied.dart';
import 'package:velvet_framework/dev_inspector/contracts/dev_inspector_config_contract.dart';

part 'dev_inspector_config.g.dart';

@Envied()
class DevInspectorConfig implements DevInspectorConfigContract {
  @EnviedField(varName: 'DEV_INSPECTOR_ENABLE', defaultValue: true)
  static const bool _enabled = _DevInspectorConfig._enabled;

  @EnviedField(varName: 'DEV_INSPECTOR_TAP_COUNT', defaultValue: 3)
  static const int _tapCount = _DevInspectorConfig._tapCount;

  @override
  get isEnabled => _enabled;

  @override
  get tapCount => _tapCount;
}
