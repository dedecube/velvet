import 'package:velvet_framework/router/base_route.dart';
import 'package:velvet_framework/router/enums/router_page_transition_enum.dart';

mixin WithMaterialPageTransition on BaseRoute {
  @override
  get pageTransition => RouterPageTransitionEnum.material;
}
