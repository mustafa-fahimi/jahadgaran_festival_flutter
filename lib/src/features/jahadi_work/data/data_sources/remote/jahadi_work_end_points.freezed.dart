// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jahadi_work_end_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JahadiWorkEndpoints {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jahadiData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? jahadiData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jahadiData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JahadiData value) jahadiData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JahadiData value)? jahadiData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JahadiData value)? jahadiData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JahadiWorkEndpointsCopyWith<$Res> {
  factory $JahadiWorkEndpointsCopyWith(
          JahadiWorkEndpoints value, $Res Function(JahadiWorkEndpoints) then) =
      _$JahadiWorkEndpointsCopyWithImpl<$Res, JahadiWorkEndpoints>;
}

/// @nodoc
class _$JahadiWorkEndpointsCopyWithImpl<$Res, $Val extends JahadiWorkEndpoints>
    implements $JahadiWorkEndpointsCopyWith<$Res> {
  _$JahadiWorkEndpointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_JahadiDataCopyWith<$Res> {
  factory _$$_JahadiDataCopyWith(
          _$_JahadiData value, $Res Function(_$_JahadiData) then) =
      __$$_JahadiDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JahadiDataCopyWithImpl<$Res>
    extends _$JahadiWorkEndpointsCopyWithImpl<$Res, _$_JahadiData>
    implements _$$_JahadiDataCopyWith<$Res> {
  __$$_JahadiDataCopyWithImpl(
      _$_JahadiData _value, $Res Function(_$_JahadiData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JahadiData implements _JahadiData {
  const _$_JahadiData();

  @override
  String toString() {
    return 'JahadiWorkEndpoints.jahadiData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JahadiData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jahadiData,
  }) {
    return jahadiData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? jahadiData,
  }) {
    return jahadiData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jahadiData,
    required TResult orElse(),
  }) {
    if (jahadiData != null) {
      return jahadiData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JahadiData value) jahadiData,
  }) {
    return jahadiData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JahadiData value)? jahadiData,
  }) {
    return jahadiData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JahadiData value)? jahadiData,
    required TResult orElse(),
  }) {
    if (jahadiData != null) {
      return jahadiData(this);
    }
    return orElse();
  }
}

abstract class _JahadiData implements JahadiWorkEndpoints {
  const factory _JahadiData() = _$_JahadiData;
}
