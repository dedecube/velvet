import 'package:velvet_framework/core/config/velvet_config.dart';

abstract class VelvetConfigManagerContract {
  T register<T extends VelvetConfig>(T config);
  T get<T extends VelvetConfig>();
}
