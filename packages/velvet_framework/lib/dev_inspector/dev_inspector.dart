import 'package:flutter/widgets.dart';
import 'package:velvet_framework/dev_inspector/contracts/dev_inspector_adapter_contract.dart';
import 'package:velvet_framework/dev_inspector/contracts/dev_inspector_config_contract.dart';

class DevInspector {
  DevInspector(this.config, this.adapter);

  final DevInspectorConfigContract config;
  final DevInspectorAdapterContract adapter;

  void open(BuildContext context) {
    adapter.open(context);
  }
}
