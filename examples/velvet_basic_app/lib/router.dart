import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text('Home'),
          ),
        );
      },
    ),
  ],
);
