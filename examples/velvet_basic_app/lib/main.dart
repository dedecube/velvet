import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class RouterConfig extends RouterConfigContract {
  @override
  String get initialPath => '/';

  @override
  RouterPageTransitionEnum get defaultPageTransition =>
      RouterPageTransitionEnum.fade;

  @override
  bool get doesPrefererBusinessLogicViews => true;
}

void main() {
  Kernel()
    ..bindAsync(routerProvider, (ref) async {
      return GoRouter(routes: [
        GoRoute(
            path: '/',
            builder: (context, state) {
              return Scaffold(
                body: Center(
                  child: Text('Home'),
                ),
              );
            }),
      ]);
    })
    ..bind(routerConfigProvider, (ref) => RouterConfig())
    ..run();
}
