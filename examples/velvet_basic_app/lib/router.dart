import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
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
