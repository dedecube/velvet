// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $formRoute,
    ];

RouteBase get $formRoute => GoRouteData.$route(
      path: '/form',
      factory: $FormRouteExtension._fromState,
    );

extension $FormRouteExtension on FormRoute {
  static FormRoute _fromState(GoRouterState state) => FormRoute();

  String get location => GoRouteData.$location(
        '/form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
