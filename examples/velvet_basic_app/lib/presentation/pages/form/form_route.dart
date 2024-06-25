import 'package:flutter/material.dart';
import 'package:velvet_basic_app/presentation/pages/form/form_page.dart';
import 'package:velvet_framework/velvet_framework.dart';

part 'form_route.g.dart';

@TypedGoRoute<FormRoute>(path: '/form')
class FormRoute extends BaseRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FormPage();
  }
}
