import 'package:shared_preferences/shared_preferences.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/store/adapters/shared_preferences_simple_store.dart';
import 'package:velvet_framework/store/contracts/store_contract.dart';
import 'package:velvet_framework/store/store.dart';

class StorePlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerSingletonAsync<StoreContract>(() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      return Store(SharedPreferencesSimpleStorage(prefs));
    });
  }
}
