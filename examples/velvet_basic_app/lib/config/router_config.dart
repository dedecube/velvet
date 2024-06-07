import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

@VelvetConfig(provider: routerConfig)
class RouterConfig extends RouterConfigContract {
  @override
  String get initialPath => '/';

  @override
  RouterPageTransitionEnum get defaultPageTransition =>
      RouterPageTransitionEnum.fade;

  @override
  bool get doesPrefererBusinessLogicViews => true;
}
