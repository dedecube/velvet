import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:velvet_framework/dev_inspector/contracts/dev_inspector_adapter_contract.dart';
import 'package:velvet_framework/talker/talker_global_instance.dart';

class DevInspectorTalkerAdapter implements DevInspectorAdapterContract {
  @override
  open(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (_) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.terminal)),
                  Tab(icon: Icon(Icons.settings)),
                ],
              ),
              title: const Text('Dev Inspector'),
            ),
            body: TabBarView(
              children: [
                TalkerView(
                  talker: talkerGlobalInstance,
                  theme: TalkerScreenTheme.fromTheme(ThemeData()),
                  appBarLeading: const Text(''),
                ),
                const Center(
                  child: Text('Settings'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
