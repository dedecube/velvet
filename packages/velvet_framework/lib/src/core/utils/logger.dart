import 'package:velvet_framework/src/core/logger/contracts/velvet_logger_contract.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';

/// Get a logger instance.
///
/// It is a shortcut for `container.get<VelvetLoggerContract>()`.
///
/// ```dart
/// logger().info('Hello, world!');
/// ```
VelvetLoggerContract logger() {
  return container.get<VelvetLoggerContract>();
}
