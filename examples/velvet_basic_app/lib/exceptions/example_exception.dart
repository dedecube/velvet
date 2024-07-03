import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ExampleException implements Exception, RenderableExceptionContract {
  ExampleException(this.message);

  final String message;

  @override
  void render(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('An error occurred'),
            ),
            body: Center(
              child: Text(message),
            ),
          );
        },
      ),
    );
  }
}
