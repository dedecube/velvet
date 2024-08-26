import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class KernelErrorDebugWidget extends HookWidget {
  const KernelErrorDebugWidget({
    super.key,
    required this.error,
    required this.stackTrace,
  });

  final Object error;
  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context) {
    useEffectOnce(() {
      event(HideLoadingWidgetEvent());

      if (kDebugMode) {
        logger().error(
          'App startup failed',
          error: error,
          stackTrace: stackTrace,
        );
      }

      return null;
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white38,
            elevation: 1,
            title: Text(
              'Velvet | Stack'.toUpperCase(),
              style: TextStyle(
                color: Colors.redAccent.withOpacity(0.8),
                fontSize: 14,
                letterSpacing: 1.2,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StackTraceMainErrorAlert(error: error),
                const SizedBox(height: 24),
                StackTraceViewer(stackTrace: stackTrace),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
