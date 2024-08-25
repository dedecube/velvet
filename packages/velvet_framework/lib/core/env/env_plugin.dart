import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:velvet_framework/velvet_framework.dart';

class EnvPlugin extends VelvetPlugin {
  String _envContent = '';

  @override
  Future<void> boot() async {
    if (!kDebugMode) {
      return;
    }

    await dotenv.load();

    listen<EnvReadEvent>((event) async {
      if (event.content == _envContent) {
        return;
      }

      _envContent = event.content;

      await dotenv.load();
    });
  }
}
