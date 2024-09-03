/// Helper interface for classes that interact with a successful data response.
///
/// This interface is used to provide a common way to access the loaded data.
///
/// Example usage:
///
/// ```dart
/// class UserSuccessView extends StatelessWidget implements InteractsWithSuccessData<User> {
///   UserSuccessData(this.data);
///
///   @override
///   build(BuildContext context) {
///    return Text(data.name);
///   }
/// }
/// ```
abstract interface class InteractsWithSuccessData<T> {
  /// The loaded data.
  abstract T data;
}
