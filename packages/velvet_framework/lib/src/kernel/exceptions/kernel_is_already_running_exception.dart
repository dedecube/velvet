/// Exception thrown when the kernel is already running.
///
/// This exception is thrown when an attempt is made to start the kernel
/// when it is already running. It provides a [message] property that
/// describes the error.
class KernelIsAlreadyRunningException implements Exception {
  final String message = 'Kernel is already running';
}
