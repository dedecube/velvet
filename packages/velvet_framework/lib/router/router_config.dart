import 'package:envied/envied.dart';
import 'package:velvet_framework/router/contracts/router_config_contract.dart';
import 'package:velvet_framework/router/enums/router_page_transition_enum.dart';

part 'router_config.g.dart';

@Envied()
class RouterConfig extends RouterConfigContract {
  @EnviedField(varName: 'ROUTER_INITIAL_PATH', defaultValue: '/')
  static const String _initialPath = _RouterConfig._initialPath;

  @EnviedField(
    varName: 'ROUTER_PREFERER_BUSINESS_LOGIC_VIEWS',
    defaultValue: false,
  )
  static const bool _prefererBusinessLogicViews =
      _RouterConfig._prefererBusinessLogicViews;

  @EnviedField(
    varName: 'ROUTER_DEFAULT_PAGE_TRANSITION',
    defaultValue: 'material',
  )
  static const String _defaultPageTransition =
      _RouterConfig._defaultPageTransition;

  @override
  String get initialPath => _initialPath;

  @override
  bool get doesPrefererBusinessLogicViews => _prefererBusinessLogicViews;

  @override
  RouterPageTransitionEnum get defaultPageTransition =>
      RouterPageTransitionEnum.values.byName(_defaultPageTransition);
}
