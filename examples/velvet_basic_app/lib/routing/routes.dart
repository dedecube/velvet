import 'package:flutter/widgets.dart';
import 'package:velvet_basic_app/pages/form/form_page.dart';
import 'package:velvet_basic_app/pages/home/home_page.dart';
import 'package:velvet_framework/velvet_framework.dart';

part '../pages/form/form_route.dart';
part '../pages/home/home_route.dart';
part 'routes.g.dart';

@TypedShellRoute<Routes>(
  routes: [
    TypedGoRoute<HomeRoute>(path: '/home'),
    TypedGoRoute<FormRoute>(path: '/form'),
  ],
)
class Routes extends ShellRouteData {}
