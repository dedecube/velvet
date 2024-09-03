import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:velvet_framework/src/core/event/utils/event.dart';
import 'package:velvet_framework/src/core/utils/logger.dart';
import 'package:velvet_framework/src/hooks/use_effect_once/use_effect_once.dart';
import 'package:velvet_framework/src/kernel/events/hide_loading_widget_event.dart';
import 'package:velvet_framework/src/kernel/widgets/components/stack_trace_main_error_alert.dart';
import 'package:velvet_framework/src/kernel/widgets/components/stack_trace_viewer.dart';

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
