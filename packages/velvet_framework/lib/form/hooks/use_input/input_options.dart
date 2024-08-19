import 'package:velvet_annotation/velvet_annotation.dart';

part 'input_options.freezed.dart';

/// Represents the options for an input field.
@Freezed(
  equal: false,
  fromJson: false,
  toJson: false,
  toStringOverride: false,
)
class InputOptions with _$InputOptions {
  /// Creates a new instance of [InputOptions].
  ///
  /// The [shouldValidateOnChange] determines whether the input should be validated on every change.
  ///
  /// The [shouldValidateOnFocusLost] determines whether the input should be validated when it loses focus.
  ///
  /// The [shouldClearErrorOnFocus] determines whether the error should be cleared when the input gains focus.
  ///
  /// The [shouldClearErrorOnChange] determines whether the error should be cleared on every change.
  factory InputOptions({
    @Default(false) bool shouldValidateOnChange,
    @Default(true) bool shouldValidateOnFocusLost,
    @Default(true) bool shouldClearErrorOnFocus,
    @Default(false) bool shouldClearErrorOnChange,
    @Default(true) bool shouldTrim,
  }) = _InputOptions;
}
