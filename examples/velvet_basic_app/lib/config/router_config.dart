import 'package:velvet_framework/velvet_framework.dart';

class RouterConfig extends RouterConfigContract {
  @override
  String get initialPath => '/';

  @override
  RouterPageTransitionEnum get defaultPageTransition =>
      RouterPageTransitionEnum.fade;

  @override
  bool get doesPrefererBusinessLogicViews => true;
}
