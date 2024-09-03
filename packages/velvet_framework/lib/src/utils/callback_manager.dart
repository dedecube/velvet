/// A class that manages callbacks and allows for their execution.
///
/// The [CallbackManager] class provides functionality to add, remove, and execute callbacks.
/// It supports both sequential and concurrent execution of callbacks.
///
/// Example usage:
/// ```dart
/// CallbackManager<void Function()> callbackManager = CallbackManager<void Function()>();
///
/// void myCallback() {
///   print('Callback executed!');
/// }
///
/// callbackManager.add(myCallback);
/// callbackManager.call();
/// ```
class CallbackManager<T extends Function> {
  /// Creates a new instance of [CallbackManager].
  ///
  /// The [callUsing] parameter allows for specifying a custom function to execute the callbacks.
  /// If not provided, the default implementation will be used.
  CallbackManager({
    this.callUsing,
  });

  /// The function used to execute the callbacks.
  ///
  /// If not set, the default implementation will be used.
  Function(T callback)? callUsing;

  final List<T> _callbacks = [];

  /// Adds a callback to the manager.
  ///
  /// The [callback] parameter is the function to be added.
  void add(T callback) {
    _callbacks.add(callback);
  }

  /// Removes a callback from the manager.
  ///
  /// The [callback] parameter is the function to be removed.
  void remove(T callback) {
    _callbacks.remove(callback);
  }

  /// Executes all the callbacks sequentially.
  ///
  /// If [callUsing] is not set, the default implementation will be used.
  Future<void> call() async {
    callUsing ??= _defaultCallUsing;

    for (final callback in _callbacks) {
      await callUsing!(callback);
    }
  }

  /// Executes all the callbacks concurrently.
  ///
  /// If [callUsing] is not set, the default implementation will be used.
  Future<void> callConcurrently() async {
    callUsing ??= _defaultCallUsing;

    await Future.wait(_callbacks.map((callback) => callUsing!(callback)));
  }

  Future<void> _defaultCallUsing(Function callback) async {
    await callback();
  }
}
