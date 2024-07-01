import 'package:flutter/material.dart';
import 'package:velvet_framework/translation/extensions/translator_extension.dart';

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
          title: Text(context.translate('velvet.kernel.widgets.error.title')),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                context.translate(
                  'velvet.kernel.widgets.error.message',
                  args: {
                    'error': error.toString(),
                  },
                ),
              ),
              ElevatedButton(
                onPressed: onRetry,
                child: Text(
                  context.translate('velvet.kernel.widgets.error.retry'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
