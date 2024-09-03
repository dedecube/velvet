import 'package:velvet_framework/src/core/env/contracts/env_config_contract.dart';

class DynamicEnvConfig extends EnvConfigContract {
  DynamicEnvConfig({
    required this.isEnabled,
  });

  @override
  final bool isEnabled;
}
