import 'package:flutter/material.dart';
import 'package:velvet_basic_app/presentation/pages/home_page.dart';
import 'package:velvet_framework/velvet_framework.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends BaseRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
