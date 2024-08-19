// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputOptions {
  bool get shouldValidateOnChange => throw _privateConstructorUsedError;
  bool get shouldValidateOnFocusLost => throw _privateConstructorUsedError;
  bool get shouldClearErrorOnFocus => throw _privateConstructorUsedError;
  bool get shouldClearErrorOnChange => throw _privateConstructorUsedError;
  bool get shouldTrim => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputOptionsCopyWith<InputOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputOptionsCopyWith<$Res> {
  factory $InputOptionsCopyWith(
          InputOptions value, $Res Function(InputOptions) then) =
      _$InputOptionsCopyWithImpl<$Res, InputOptions>;
  @useResult
  $Res call(
      {bool shouldValidateOnChange,
      bool shouldValidateOnFocusLost,
      bool shouldClearErrorOnFocus,
      bool shouldClearErrorOnChange,
      bool shouldTrim});
}

/// @nodoc
class _$InputOptionsCopyWithImpl<$Res, $Val extends InputOptions>
    implements $InputOptionsCopyWith<$Res> {
  _$InputOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldValidateOnChange = null,
    Object? shouldValidateOnFocusLost = null,
    Object? shouldClearErrorOnFocus = null,
    Object? shouldClearErrorOnChange = null,
    Object? shouldTrim = null,
  }) {
    return _then(_value.copyWith(
      shouldValidateOnChange: null == shouldValidateOnChange
          ? _value.shouldValidateOnChange
          : shouldValidateOnChange // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldValidateOnFocusLost: null == shouldValidateOnFocusLost
          ? _value.shouldValidateOnFocusLost
          : shouldValidateOnFocusLost // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldClearErrorOnFocus: null == shouldClearErrorOnFocus
          ? _value.shouldClearErrorOnFocus
          : shouldClearErrorOnFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldClearErrorOnChange: null == shouldClearErrorOnChange
          ? _value.shouldClearErrorOnChange
          : shouldClearErrorOnChange // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldTrim: null == shouldTrim
          ? _value.shouldTrim
          : shouldTrim // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputOptionsImplCopyWith<$Res>
    implements $InputOptionsCopyWith<$Res> {
  factory _$$InputOptionsImplCopyWith(
          _$InputOptionsImpl value, $Res Function(_$InputOptionsImpl) then) =
      __$$InputOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool shouldValidateOnChange,
      bool shouldValidateOnFocusLost,
      bool shouldClearErrorOnFocus,
      bool shouldClearErrorOnChange,
      bool shouldTrim});
}

/// @nodoc
class __$$InputOptionsImplCopyWithImpl<$Res>
    extends _$InputOptionsCopyWithImpl<$Res, _$InputOptionsImpl>
    implements _$$InputOptionsImplCopyWith<$Res> {
  __$$InputOptionsImplCopyWithImpl(
      _$InputOptionsImpl _value, $Res Function(_$InputOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldValidateOnChange = null,
    Object? shouldValidateOnFocusLost = null,
    Object? shouldClearErrorOnFocus = null,
    Object? shouldClearErrorOnChange = null,
    Object? shouldTrim = null,
  }) {
    return _then(_$InputOptionsImpl(
      shouldValidateOnChange: null == shouldValidateOnChange
          ? _value.shouldValidateOnChange
          : shouldValidateOnChange // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldValidateOnFocusLost: null == shouldValidateOnFocusLost
          ? _value.shouldValidateOnFocusLost
          : shouldValidateOnFocusLost // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldClearErrorOnFocus: null == shouldClearErrorOnFocus
          ? _value.shouldClearErrorOnFocus
          : shouldClearErrorOnFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldClearErrorOnChange: null == shouldClearErrorOnChange
          ? _value.shouldClearErrorOnChange
          : shouldClearErrorOnChange // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldTrim: null == shouldTrim
          ? _value.shouldTrim
          : shouldTrim // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InputOptionsImpl implements _InputOptions {
  _$InputOptionsImpl(
      {this.shouldValidateOnChange = false,
      this.shouldValidateOnFocusLost = true,
      this.shouldClearErrorOnFocus = true,
      this.shouldClearErrorOnChange = false,
      this.shouldTrim = true});

  @override
  @JsonKey()
  final bool shouldValidateOnChange;
  @override
  @JsonKey()
  final bool shouldValidateOnFocusLost;
  @override
  @JsonKey()
  final bool shouldClearErrorOnFocus;
  @override
  @JsonKey()
  final bool shouldClearErrorOnChange;
  @override
  @JsonKey()
  final bool shouldTrim;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputOptionsImplCopyWith<_$InputOptionsImpl> get copyWith =>
      __$$InputOptionsImplCopyWithImpl<_$InputOptionsImpl>(this, _$identity);
}

abstract class _InputOptions implements InputOptions {
  factory _InputOptions(
      {final bool shouldValidateOnChange,
      final bool shouldValidateOnFocusLost,
      final bool shouldClearErrorOnFocus,
      final bool shouldClearErrorOnChange,
      final bool shouldTrim}) = _$InputOptionsImpl;

  @override
  bool get shouldValidateOnChange;
  @override
  bool get shouldValidateOnFocusLost;
  @override
  bool get shouldClearErrorOnFocus;
  @override
  bool get shouldClearErrorOnChange;
  @override
  bool get shouldTrim;
  @override
  @JsonKey(ignore: true)
  _$$InputOptionsImplCopyWith<_$InputOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
