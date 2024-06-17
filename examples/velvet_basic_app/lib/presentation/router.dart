import 'package:velvet_basic_app/presentation/routes/home_route.dart'
    as home_route;
import 'package:velvet_framework/velvet_framework.dart';

final router = GoRouter(
  routes: [
    ...home_route.$appRoutes,
  ],
);
