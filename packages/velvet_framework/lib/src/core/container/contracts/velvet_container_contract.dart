import 'package:get_it/get_it.dart';

abstract class VelvetContainerContract implements GetIt {
  void requireRegistrationOf<T extends Object>({String? instanceName});
}
