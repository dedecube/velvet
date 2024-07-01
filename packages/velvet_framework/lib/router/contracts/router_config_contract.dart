import 'package:velvet_framework/router/enums/router_page_transition_enum.dart';

/// A contract defining the configuration for the router.
abstract class RouterConfigContract {
  /// The initial path to be displayed when the app starts.
  String get initialPath;

  /// Determines whether to prefer business logic views over UI views.
  bool get doesPrefererBusinessLogicViews;

  /// The default page transition to be used when navigating between pages.
  RouterPageTransitionEnum get defaultPageTransition;
}
