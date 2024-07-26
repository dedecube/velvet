import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/store/adapters/shared_preferences_simple_store.dart';
import 'package:velvet_framework/store/contracts/store_contract.dart';
import 'package:velvet_framework/store/store.dart';

part 'store_provider.g.dart';

/// This provider is responsible for providing the store to the application.
@Riverpod(keepAlive: true, dependencies: [])
Future<StoreContract> store(StoreRef ref) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  return Store(SharedPreferencesSimpleStorage(prefs));
}
