import 'package:velvet_basic_app/presentation/pages/form/form_route.dart'
    as form_route;
import 'package:velvet_basic_app/presentation/pages/home/home_route.dart'
    as home_route;

final routes = [
  ...home_route.$appRoutes,
  ...form_route.$appRoutes,
];
