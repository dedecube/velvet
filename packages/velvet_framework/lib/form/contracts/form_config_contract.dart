/// The contract for a form configuration.
///
/// This contract defines the structure of a form configuration and provides
/// a method to retrieve the default values for the form fields.
abstract class FormConfigContract {
  /// Retrieves the default values for the form fields.
  /// Useful for initializing the form fields with default values on debug mode.
  Map<String, dynamic> get precompiledValues;
}
