import 'package:velvet_basic_app/presentation/pages/form/form_route.dart'
    as form_route;
import 'package:velvet_basic_app/presentation/pages/home/home_route.dart'
    as home_route;
import 'package:velvet_framework/velvet_framework.dart';

final router = GoRouter(
  routes: [
    ...home_route.$appRoutes,
    ...form_route.$appRoutes,
  ],
);
