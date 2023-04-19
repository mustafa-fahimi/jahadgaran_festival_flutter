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
    required TResult Function() groupData,
    required TResult Function() submittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? groupData,
    TResult? Function()? submittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? groupData,
    TResult Function()? submittedWork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupData value) groupData,
    required TResult Function(_SubmittedWork value) submittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GroupData value)? groupData,
    TResult? Function(_SubmittedWork value)? submittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupData value)? groupData,
    TResult Function(_SubmittedWork value)? submittedWork,
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
abstract class _$$_GroupDataCopyWith<$Res> {
  factory _$$_GroupDataCopyWith(
          _$_GroupData value, $Res Function(_$_GroupData) then) =
      __$$_GroupDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GroupDataCopyWithImpl<$Res>
    extends _$JahadiWorkEndpointsCopyWithImpl<$Res, _$_GroupData>
    implements _$$_GroupDataCopyWith<$Res> {
  __$$_GroupDataCopyWithImpl(
      _$_GroupData _value, $Res Function(_$_GroupData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GroupData implements _GroupData {
  const _$_GroupData();

  @override
  String toString() {
    return 'JahadiWorkEndpoints.groupData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GroupData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() groupData,
    required TResult Function() submittedWork,
  }) {
    return groupData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? groupData,
    TResult? Function()? submittedWork,
  }) {
    return groupData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? groupData,
    TResult Function()? submittedWork,
    required TResult orElse(),
  }) {
    if (groupData != null) {
      return groupData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupData value) groupData,
    required TResult Function(_SubmittedWork value) submittedWork,
  }) {
    return groupData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GroupData value)? groupData,
    TResult? Function(_SubmittedWork value)? submittedWork,
  }) {
    return groupData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupData value)? groupData,
    TResult Function(_SubmittedWork value)? submittedWork,
    required TResult orElse(),
  }) {
    if (groupData != null) {
      return groupData(this);
    }
    return orElse();
  }
}

abstract class _GroupData implements JahadiWorkEndpoints {
  const factory _GroupData() = _$_GroupData;
}

/// @nodoc
abstract class _$$_SubmittedWorkCopyWith<$Res> {
  factory _$$_SubmittedWorkCopyWith(
          _$_SubmittedWork value, $Res Function(_$_SubmittedWork) then) =
      __$$_SubmittedWorkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedWorkCopyWithImpl<$Res>
    extends _$JahadiWorkEndpointsCopyWithImpl<$Res, _$_SubmittedWork>
    implements _$$_SubmittedWorkCopyWith<$Res> {
  __$$_SubmittedWorkCopyWithImpl(
      _$_SubmittedWork _value, $Res Function(_$_SubmittedWork) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubmittedWork implements _SubmittedWork {
  const _$_SubmittedWork();

  @override
  String toString() {
    return 'JahadiWorkEndpoints.submittedWork()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmittedWork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() groupData,
    required TResult Function() submittedWork,
  }) {
    return submittedWork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? groupData,
    TResult? Function()? submittedWork,
  }) {
    return submittedWork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? groupData,
    TResult Function()? submittedWork,
    required TResult orElse(),
  }) {
    if (submittedWork != null) {
      return submittedWork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupData value) groupData,
    required TResult Function(_SubmittedWork value) submittedWork,
  }) {
    return submittedWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GroupData value)? groupData,
    TResult? Function(_SubmittedWork value)? submittedWork,
  }) {
    return submittedWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupData value)? groupData,
    TResult Function(_SubmittedWork value)? submittedWork,
    required TResult orElse(),
  }) {
    if (submittedWork != null) {
      return submittedWork(this);
    }
    return orElse();
  }
}

abstract class _SubmittedWork implements JahadiWorkEndpoints {
  const factory _SubmittedWork() = _$_SubmittedWork;
}
