import 'package:dev_panel_velvet_plugin/src/contracts/dev_inspector_adapter_contract.dart';
import 'package:dev_panel_velvet_plugin/src/contracts/dev_inspector_config_contract.dart';
import 'package:flutter/widgets.dart';

class DevInspector {
  DevInspector(this.config, this.adapter);

  final DevInspectorConfigContract config;
  final DevInspectorAdapterContract adapter;

  void open(BuildContext context) {
    adapter.open(context);
  }
}
