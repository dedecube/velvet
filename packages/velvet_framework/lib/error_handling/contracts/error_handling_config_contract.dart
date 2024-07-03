import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

abstract class ErrorHandlingConfigContract {
  void renderer(BuildContext context, Exception exception) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('An error occurred'),
        content: Text(exception.toString()),
        actions: [
          TextButton(
            onPressed: () => GoRouter.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
