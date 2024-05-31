import 'package:flutter/material.dart';

class KernelErrorWidget extends StatelessWidget {
  const KernelErrorWidget({
    super.key,
    required this.error,
    required this.onRetry,
    required this.stackTrace,
  });

  final Object error;
  final VoidCallback onRetry;
  final StackTrace stackTrace;

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Error'),
              ElevatedButton(
                onPressed: onRetry,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
