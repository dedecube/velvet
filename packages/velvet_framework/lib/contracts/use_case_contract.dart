/// A contract for defining a use case.
///
/// A use case represents a specific business logic or operation that can be performed in an application.
/// It typically takes input parameters and returns a result of a specific type.
/// Implementations of this contract should provide the logic for executing the use case.
///
/// A use case should be a pure function that does not have any side effects.
/// It should only perform the operation it is designed to do and return the result.
/// It MUST NOT interact with the UI.
abstract interface class UseCaseContract<Return, Params> {
  /// Executes the use case with the given parameters.
  ///
  /// The [params] parameter represents the input parameters required for the use case.
  /// The method should return a [Future] that resolves to the result of the use case.
  Future<Return> execute(Params params);
}
