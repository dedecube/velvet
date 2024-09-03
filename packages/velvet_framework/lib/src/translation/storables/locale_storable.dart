import 'package:velvet_framework/src/store/velvet_storable.dart';

class LocaleStorable extends VelvetStorable<String> {
  @override
  String get key => 'locale';

  @override
  Future<void> set(String data) async {
    await store.simple.setString(key, data);
  }

  @override
  Future<String?> get({String? defaultValue}) async {
    return await store.simple.getString(key, defaultValue: defaultValue);
  }
}
