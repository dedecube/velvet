import 'package:velvet_framework/velvet_framework.dart';

class FormPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerSingleton<FormConfigContract>(FormDefaultConfig());
  }
}
