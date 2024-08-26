import 'package:get_it/get_it.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

abstract class VelvetContainerContract implements GetIt {
  void requireRegistrationOf<T extends Object>();

  @override
  @protected
  // ignore: boolean_prefixes
  final bool allowReassignment = true;
}
