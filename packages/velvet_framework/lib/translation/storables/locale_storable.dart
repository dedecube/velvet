import 'package:velvet_framework/store/storable.dart';

class LocaleStorable extends Storable<String> {
  @override
  get key => 'locale';

  @override
  Future<void> set(String data) async {
    await store.simple.setString(key, data);
  }

  @override
  Future<String?> get({String? defaultValue}) async {
    return await store.simple.getString(key, defaultValue: defaultValue);
  }
}
