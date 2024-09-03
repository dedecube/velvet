import 'package:shared_preferences/shared_preferences.dart';

import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/store/adapters/shared_preferences_simple_store.dart';
import 'package:velvet_framework/src/store/contracts/velvet_store_contract.dart';
import 'package:velvet_framework/src/store/velvet_store.dart';

class VelvetStorePlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerSingletonAsync<VelvetStoreContract>(() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      return VelvetStore(SharedPreferencesSimpleStorage(prefs));
    });
  }
}
