// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(int step) changeFormStep,
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(int step)? changeFormStep,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(int step)? changeFormStep,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormStep value) changeFormStep,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormStep value)? changeFormStep,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormStep value)? changeFormStep,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeMiddleViewCopyWith<$Res> {
  factory _$$_ChangeMiddleViewCopyWith(
          _$_ChangeMiddleView value, $Res Function(_$_ChangeMiddleView) then) =
      __$$_ChangeMiddleViewCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeMiddleViews view, NewsModel? news});
}

/// @nodoc
class __$$_ChangeMiddleViewCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ChangeMiddleView>
    implements _$$_ChangeMiddleViewCopyWith<$Res> {
  __$$_ChangeMiddleViewCopyWithImpl(
      _$_ChangeMiddleView _value, $Res Function(_$_ChangeMiddleView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
    Object? news = freezed,
  }) {
    return _then(_$_ChangeMiddleView(
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as HomeMiddleViews,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
    ));
  }
}

/// @nodoc

class _$_ChangeMiddleView implements _ChangeMiddleView {
  const _$_ChangeMiddleView({required this.view, this.news});

  @override
  final HomeMiddleViews view;
  @override
  final NewsModel? news;

  @override
  String toString() {
    return 'HomeEvent.changeMiddleView(view: $view, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeMiddleView &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.news, news) || other.news == news));
  }

  @override
  int get hashCode => Object.hash(runtimeType, view, news);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeMiddleViewCopyWith<_$_ChangeMiddleView> get copyWith =>
      __$$_ChangeMiddleViewCopyWithImpl<_$_ChangeMiddleView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(int step) changeFormStep,
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return changeMiddleView(view, news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(int step)? changeFormStep,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return changeMiddleView?.call(view, news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(int step)? changeFormStep,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (changeMiddleView != null) {
      return changeMiddleView(view, news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormStep value) changeFormStep,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return changeMiddleView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormStep value)? changeFormStep,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return changeMiddleView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormStep value)? changeFormStep,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (changeMiddleView != null) {
      return changeMiddleView(this);
    }
    return orElse();
  }
}

abstract class _ChangeMiddleView implements HomeEvent {
  const factory _ChangeMiddleView(
      {required final HomeMiddleViews view,
      final NewsModel? news}) = _$_ChangeMiddleView;

  HomeMiddleViews get view;
  NewsModel? get news;
  @JsonKey(ignore: true)
  _$$_ChangeMiddleViewCopyWith<_$_ChangeMiddleView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeFormStepCopyWith<$Res> {
  factory _$$_ChangeFormStepCopyWith(
          _$_ChangeFormStep value, $Res Function(_$_ChangeFormStep) then) =
      __$$_ChangeFormStepCopyWithImpl<$Res>;
  @useResult
  $Res call({int step});
}

/// @nodoc
class __$$_ChangeFormStepCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ChangeFormStep>
    implements _$$_ChangeFormStepCopyWith<$Res> {
  __$$_ChangeFormStepCopyWithImpl(
      _$_ChangeFormStep _value, $Res Function(_$_ChangeFormStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
  }) {
    return _then(_$_ChangeFormStep(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeFormStep implements _ChangeFormStep {
  const _$_ChangeFormStep({required this.step});

  @override
  final int step;

  @override
  String toString() {
    return 'HomeEvent.changeFormStep(step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFormStep &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFormStepCopyWith<_$_ChangeFormStep> get copyWith =>
      __$$_ChangeFormStepCopyWithImpl<_$_ChangeFormStep>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(int step) changeFormStep,
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return changeFormStep(step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(int step)? changeFormStep,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return changeFormStep?.call(step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(int step)? changeFormStep,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (changeFormStep != null) {
      return changeFormStep(step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormStep value) changeFormStep,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return changeFormStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormStep value)? changeFormStep,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return changeFormStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormStep value)? changeFormStep,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (changeFormStep != null) {
      return changeFormStep(this);
    }
    return orElse();
  }
}

abstract class _ChangeFormStep implements HomeEvent {
  const factory _ChangeFormStep({required final int step}) = _$_ChangeFormStep;

  int get step;
  @JsonKey(ignore: true)
  _$$_ChangeFormStepCopyWith<_$_ChangeFormStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetGroupDataCopyWith<$Res> {
  factory _$$_GetGroupDataCopyWith(
          _$_GetGroupData value, $Res Function(_$_GetGroupData) then) =
      __$$_GetGroupDataCopyWithImpl<$Res>;
  @useResult
  $Res call({GetGroupDataParams getGroupDataParams});
}

/// @nodoc
class __$$_GetGroupDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetGroupData>
    implements _$$_GetGroupDataCopyWith<$Res> {
  __$$_GetGroupDataCopyWithImpl(
      _$_GetGroupData _value, $Res Function(_$_GetGroupData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getGroupDataParams = null,
  }) {
    return _then(_$_GetGroupData(
      getGroupDataParams: null == getGroupDataParams
          ? _value.getGroupDataParams
          : getGroupDataParams // ignore: cast_nullable_to_non_nullable
              as GetGroupDataParams,
    ));
  }
}

/// @nodoc

class _$_GetGroupData implements _GetGroupData {
  const _$_GetGroupData({required this.getGroupDataParams});

  @override
  final GetGroupDataParams getGroupDataParams;

  @override
  String toString() {
    return 'HomeEvent.getGroupData(getGroupDataParams: $getGroupDataParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetGroupData &&
            (identical(other.getGroupDataParams, getGroupDataParams) ||
                other.getGroupDataParams == getGroupDataParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getGroupDataParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetGroupDataCopyWith<_$_GetGroupData> get copyWith =>
      __$$_GetGroupDataCopyWithImpl<_$_GetGroupData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(int step) changeFormStep,
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return getGroupData(getGroupDataParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(int step)? changeFormStep,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return getGroupData?.call(getGroupDataParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(int step)? changeFormStep,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (getGroupData != null) {
      return getGroupData(getGroupDataParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormStep value) changeFormStep,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return getGroupData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormStep value)? changeFormStep,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return getGroupData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormStep value)? changeFormStep,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (getGroupData != null) {
      return getGroupData(this);
    }
    return orElse();
  }
}

abstract class _GetGroupData implements HomeEvent {
  const factory _GetGroupData(
      {required final GetGroupDataParams getGroupDataParams}) = _$_GetGroupData;

  GetGroupDataParams get getGroupDataParams;
  @JsonKey(ignore: true)
  _$$_GetGroupDataCopyWith<_$_GetGroupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAtlasCodeCopyWith<$Res> {
  factory _$$_GetAtlasCodeCopyWith(
          _$_GetAtlasCode value, $Res Function(_$_GetAtlasCode) then) =
      __$$_GetAtlasCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupSupervisorNationalCode});
}

/// @nodoc
class __$$_GetAtlasCodeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetAtlasCode>
    implements _$$_GetAtlasCodeCopyWith<$Res> {
  __$$_GetAtlasCodeCopyWithImpl(
      _$_GetAtlasCode _value, $Res Function(_$_GetAtlasCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupSupervisorNationalCode = null,
  }) {
    return _then(_$_GetAtlasCode(
      groupSupervisorNationalCode: null == groupSupervisorNationalCode
          ? _value.groupSupervisorNationalCode
          : groupSupervisorNationalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAtlasCode implements _GetAtlasCode {
  const _$_GetAtlasCode({required this.groupSupervisorNationalCode});

  @override
  final String groupSupervisorNationalCode;

  @override
  String toString() {
    return 'HomeEvent.getAtlasCode(groupSupervisorNationalCode: $groupSupervisorNationalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAtlasCode &&
            (identical(other.groupSupervisorNationalCode,
                    groupSupervisorNationalCode) ||
                other.groupSupervisorNationalCode ==
                    groupSupervisorNationalCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupSupervisorNationalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAtlasCodeCopyWith<_$_GetAtlasCode> get copyWith =>
      __$$_GetAtlasCodeCopyWithImpl<_$_GetAtlasCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(int step) changeFormStep,
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return getAtlasCode(groupSupervisorNationalCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(int step)? changeFormStep,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return getAtlasCode?.call(groupSupervisorNationalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(int step)? changeFormStep,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (getAtlasCode != null) {
      return getAtlasCode(groupSupervisorNationalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormStep value) changeFormStep,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return getAtlasCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormStep value)? changeFormStep,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return getAtlasCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormStep value)? changeFormStep,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (getAtlasCode != null) {
      return getAtlasCode(this);
    }
    return orElse();
  }
}

abstract class _GetAtlasCode implements HomeEvent {
  const factory _GetAtlasCode(
      {required final String groupSupervisorNationalCode}) = _$_GetAtlasCode;

  String get groupSupervisorNationalCode;
  @JsonKey(ignore: true)
  _$$_GetAtlasCodeCopyWith<_$_GetAtlasCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendSubmittedWorkCopyWith<$Res> {
  factory _$$_SendSubmittedWorkCopyWith(_$_SendSubmittedWork value,
          $Res Function(_$_SendSubmittedWork) then) =
      __$$_SendSubmittedWorkCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData formData});
}

/// @nodoc
class __$$_SendSubmittedWorkCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_SendSubmittedWork>
    implements _$$_SendSubmittedWorkCopyWith<$Res> {
  __$$_SendSubmittedWorkCopyWithImpl(
      _$_SendSubmittedWork _value, $Res Function(_$_SendSubmittedWork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
  }) {
    return _then(_$_SendSubmittedWork(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$_SendSubmittedWork implements _SendSubmittedWork {
  const _$_SendSubmittedWork({required this.formData});

  @override
  final FormData formData;

  @override
  String toString() {
    return 'HomeEvent.sendSubmittedWork(formData: $formData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendSubmittedWork &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendSubmittedWorkCopyWith<_$_SendSubmittedWork> get copyWith =>
      __$$_SendSubmittedWorkCopyWithImpl<_$_SendSubmittedWork>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(int step) changeFormStep,
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return sendSubmittedWork(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(int step)? changeFormStep,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return sendSubmittedWork?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(int step)? changeFormStep,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (sendSubmittedWork != null) {
      return sendSubmittedWork(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormStep value) changeFormStep,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return sendSubmittedWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormStep value)? changeFormStep,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return sendSubmittedWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormStep value)? changeFormStep,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (sendSubmittedWork != null) {
      return sendSubmittedWork(this);
    }
    return orElse();
  }
}

abstract class _SendSubmittedWork implements HomeEvent {
  const factory _SendSubmittedWork({required final FormData formData}) =
      _$_SendSubmittedWork;

  FormData get formData;
  @JsonKey(ignore: true)
  _$$_SendSubmittedWorkCopyWith<_$_SendSubmittedWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  int get sendDataStep => throw _privateConstructorUsedError;
  bool get isLoadingGetGroupData => throw _privateConstructorUsedError;
  bool get isLoadingSubmitData => throw _privateConstructorUsedError;
  bool get isGetGroupDataSuccessful => throw _privateConstructorUsedError;
  bool get isSubmitDataSuccessful => throw _privateConstructorUsedError;
  String get getGroupDataFailMessage => throw _privateConstructorUsedError;
  String get submitDataFailMessage => throw _privateConstructorUsedError;
  GetGroupDataResponse get groupData => throw _privateConstructorUsedError;
  String get getAtlasCodeResult => throw _privateConstructorUsedError;
  HomeMiddleViews get currentMiddleView => throw _privateConstructorUsedError;
  NewsModel? get selectedNews => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int sendDataStep,
            bool isLoadingGetGroupData,
            bool isLoadingSubmitData,
            bool isGetGroupDataSuccessful,
            bool isSubmitDataSuccessful,
            String getGroupDataFailMessage,
            String submitDataFailMessage,
            GetGroupDataResponse groupData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int sendDataStep,
            bool isLoadingGetGroupData,
            bool isLoadingSubmitData,
            bool isGetGroupDataSuccessful,
            bool isSubmitDataSuccessful,
            String getGroupDataFailMessage,
            String submitDataFailMessage,
            GetGroupDataResponse groupData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int sendDataStep,
            bool isLoadingGetGroupData,
            bool isLoadingSubmitData,
            bool isGetGroupDataSuccessful,
            bool isSubmitDataSuccessful,
            String getGroupDataFailMessage,
            String submitDataFailMessage,
            GetGroupDataResponse groupData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int sendDataStep,
      bool isLoadingGetGroupData,
      bool isLoadingSubmitData,
      bool isGetGroupDataSuccessful,
      bool isSubmitDataSuccessful,
      String getGroupDataFailMessage,
      String submitDataFailMessage,
      GetGroupDataResponse groupData,
      String getAtlasCodeResult,
      HomeMiddleViews currentMiddleView,
      NewsModel? selectedNews});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendDataStep = null,
    Object? isLoadingGetGroupData = null,
    Object? isLoadingSubmitData = null,
    Object? isGetGroupDataSuccessful = null,
    Object? isSubmitDataSuccessful = null,
    Object? getGroupDataFailMessage = null,
    Object? submitDataFailMessage = null,
    Object? groupData = null,
    Object? getAtlasCodeResult = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_value.copyWith(
      sendDataStep: null == sendDataStep
          ? _value.sendDataStep
          : sendDataStep // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingGetGroupData: null == isLoadingGetGroupData
          ? _value.isLoadingGetGroupData
          : isLoadingGetGroupData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitData: null == isLoadingSubmitData
          ? _value.isLoadingSubmitData
          : isLoadingSubmitData // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetGroupDataSuccessful: null == isGetGroupDataSuccessful
          ? _value.isGetGroupDataSuccessful
          : isGetGroupDataSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitDataSuccessful: null == isSubmitDataSuccessful
          ? _value.isSubmitDataSuccessful
          : isSubmitDataSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      getGroupDataFailMessage: null == getGroupDataFailMessage
          ? _value.getGroupDataFailMessage
          : getGroupDataFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      submitDataFailMessage: null == submitDataFailMessage
          ? _value.submitDataFailMessage
          : submitDataFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      groupData: null == groupData
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GetGroupDataResponse,
      getAtlasCodeResult: null == getAtlasCodeResult
          ? _value.getAtlasCodeResult
          : getAtlasCodeResult // ignore: cast_nullable_to_non_nullable
              as String,
      currentMiddleView: null == currentMiddleView
          ? _value.currentMiddleView
          : currentMiddleView // ignore: cast_nullable_to_non_nullable
              as HomeMiddleViews,
      selectedNews: freezed == selectedNews
          ? _value.selectedNews
          : selectedNews // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sendDataStep,
      bool isLoadingGetGroupData,
      bool isLoadingSubmitData,
      bool isGetGroupDataSuccessful,
      bool isSubmitDataSuccessful,
      String getGroupDataFailMessage,
      String submitDataFailMessage,
      GetGroupDataResponse groupData,
      String getAtlasCodeResult,
      HomeMiddleViews currentMiddleView,
      NewsModel? selectedNews});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendDataStep = null,
    Object? isLoadingGetGroupData = null,
    Object? isLoadingSubmitData = null,
    Object? isGetGroupDataSuccessful = null,
    Object? isSubmitDataSuccessful = null,
    Object? getGroupDataFailMessage = null,
    Object? submitDataFailMessage = null,
    Object? groupData = null,
    Object? getAtlasCodeResult = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_$_Idle(
      sendDataStep: null == sendDataStep
          ? _value.sendDataStep
          : sendDataStep // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingGetGroupData: null == isLoadingGetGroupData
          ? _value.isLoadingGetGroupData
          : isLoadingGetGroupData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitData: null == isLoadingSubmitData
          ? _value.isLoadingSubmitData
          : isLoadingSubmitData // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetGroupDataSuccessful: null == isGetGroupDataSuccessful
          ? _value.isGetGroupDataSuccessful
          : isGetGroupDataSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitDataSuccessful: null == isSubmitDataSuccessful
          ? _value.isSubmitDataSuccessful
          : isSubmitDataSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      getGroupDataFailMessage: null == getGroupDataFailMessage
          ? _value.getGroupDataFailMessage
          : getGroupDataFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      submitDataFailMessage: null == submitDataFailMessage
          ? _value.submitDataFailMessage
          : submitDataFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      groupData: null == groupData
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GetGroupDataResponse,
      getAtlasCodeResult: null == getAtlasCodeResult
          ? _value.getAtlasCodeResult
          : getAtlasCodeResult // ignore: cast_nullable_to_non_nullable
              as String,
      currentMiddleView: null == currentMiddleView
          ? _value.currentMiddleView
          : currentMiddleView // ignore: cast_nullable_to_non_nullable
              as HomeMiddleViews,
      selectedNews: freezed == selectedNews
          ? _value.selectedNews
          : selectedNews // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.sendDataStep = 1,
      this.isLoadingGetGroupData = false,
      this.isLoadingSubmitData = false,
      this.isGetGroupDataSuccessful = false,
      this.isSubmitDataSuccessful = false,
      this.getGroupDataFailMessage = '',
      this.submitDataFailMessage = '',
      this.groupData = const GetGroupDataResponse(),
      this.getAtlasCodeResult = '',
      this.currentMiddleView = HomeMiddleViews.home,
      this.selectedNews});

  @override
  @JsonKey()
  final int sendDataStep;
  @override
  @JsonKey()
  final bool isLoadingGetGroupData;
  @override
  @JsonKey()
  final bool isLoadingSubmitData;
  @override
  @JsonKey()
  final bool isGetGroupDataSuccessful;
  @override
  @JsonKey()
  final bool isSubmitDataSuccessful;
  @override
  @JsonKey()
  final String getGroupDataFailMessage;
  @override
  @JsonKey()
  final String submitDataFailMessage;
  @override
  @JsonKey()
  final GetGroupDataResponse groupData;
  @override
  @JsonKey()
  final String getAtlasCodeResult;
  @override
  @JsonKey()
  final HomeMiddleViews currentMiddleView;
  @override
  final NewsModel? selectedNews;

  @override
  String toString() {
    return 'HomeState.idle(sendDataStep: $sendDataStep, isLoadingGetGroupData: $isLoadingGetGroupData, isLoadingSubmitData: $isLoadingSubmitData, isGetGroupDataSuccessful: $isGetGroupDataSuccessful, isSubmitDataSuccessful: $isSubmitDataSuccessful, getGroupDataFailMessage: $getGroupDataFailMessage, submitDataFailMessage: $submitDataFailMessage, groupData: $groupData, getAtlasCodeResult: $getAtlasCodeResult, currentMiddleView: $currentMiddleView, selectedNews: $selectedNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.sendDataStep, sendDataStep) ||
                other.sendDataStep == sendDataStep) &&
            (identical(other.isLoadingGetGroupData, isLoadingGetGroupData) ||
                other.isLoadingGetGroupData == isLoadingGetGroupData) &&
            (identical(other.isLoadingSubmitData, isLoadingSubmitData) ||
                other.isLoadingSubmitData == isLoadingSubmitData) &&
            (identical(
                    other.isGetGroupDataSuccessful, isGetGroupDataSuccessful) ||
                other.isGetGroupDataSuccessful == isGetGroupDataSuccessful) &&
            (identical(other.isSubmitDataSuccessful, isSubmitDataSuccessful) ||
                other.isSubmitDataSuccessful == isSubmitDataSuccessful) &&
            (identical(
                    other.getGroupDataFailMessage, getGroupDataFailMessage) ||
                other.getGroupDataFailMessage == getGroupDataFailMessage) &&
            (identical(other.submitDataFailMessage, submitDataFailMessage) ||
                other.submitDataFailMessage == submitDataFailMessage) &&
            (identical(other.groupData, groupData) ||
                other.groupData == groupData) &&
            (identical(other.getAtlasCodeResult, getAtlasCodeResult) ||
                other.getAtlasCodeResult == getAtlasCodeResult) &&
            (identical(other.currentMiddleView, currentMiddleView) ||
                other.currentMiddleView == currentMiddleView) &&
            (identical(other.selectedNews, selectedNews) ||
                other.selectedNews == selectedNews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sendDataStep,
      isLoadingGetGroupData,
      isLoadingSubmitData,
      isGetGroupDataSuccessful,
      isSubmitDataSuccessful,
      getGroupDataFailMessage,
      submitDataFailMessage,
      groupData,
      getAtlasCodeResult,
      currentMiddleView,
      selectedNews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int sendDataStep,
            bool isLoadingGetGroupData,
            bool isLoadingSubmitData,
            bool isGetGroupDataSuccessful,
            bool isSubmitDataSuccessful,
            String getGroupDataFailMessage,
            String submitDataFailMessage,
            GetGroupDataResponse groupData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) {
    return idle(
        sendDataStep,
        isLoadingGetGroupData,
        isLoadingSubmitData,
        isGetGroupDataSuccessful,
        isSubmitDataSuccessful,
        getGroupDataFailMessage,
        submitDataFailMessage,
        groupData,
        getAtlasCodeResult,
        currentMiddleView,
        selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int sendDataStep,
            bool isLoadingGetGroupData,
            bool isLoadingSubmitData,
            bool isGetGroupDataSuccessful,
            bool isSubmitDataSuccessful,
            String getGroupDataFailMessage,
            String submitDataFailMessage,
            GetGroupDataResponse groupData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) {
    return idle?.call(
        sendDataStep,
        isLoadingGetGroupData,
        isLoadingSubmitData,
        isGetGroupDataSuccessful,
        isSubmitDataSuccessful,
        getGroupDataFailMessage,
        submitDataFailMessage,
        groupData,
        getAtlasCodeResult,
        currentMiddleView,
        selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int sendDataStep,
            bool isLoadingGetGroupData,
            bool isLoadingSubmitData,
            bool isGetGroupDataSuccessful,
            bool isSubmitDataSuccessful,
            String getGroupDataFailMessage,
            String submitDataFailMessage,
            GetGroupDataResponse groupData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(
          sendDataStep,
          isLoadingGetGroupData,
          isLoadingSubmitData,
          isGetGroupDataSuccessful,
          isSubmitDataSuccessful,
          getGroupDataFailMessage,
          submitDataFailMessage,
          groupData,
          getAtlasCodeResult,
          currentMiddleView,
          selectedNews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements HomeState {
  const factory _Idle(
      {final int sendDataStep,
      final bool isLoadingGetGroupData,
      final bool isLoadingSubmitData,
      final bool isGetGroupDataSuccessful,
      final bool isSubmitDataSuccessful,
      final String getGroupDataFailMessage,
      final String submitDataFailMessage,
      final GetGroupDataResponse groupData,
      final String getAtlasCodeResult,
      final HomeMiddleViews currentMiddleView,
      final NewsModel? selectedNews}) = _$_Idle;

  @override
  int get sendDataStep;
  @override
  bool get isLoadingGetGroupData;
  @override
  bool get isLoadingSubmitData;
  @override
  bool get isGetGroupDataSuccessful;
  @override
  bool get isSubmitDataSuccessful;
  @override
  String get getGroupDataFailMessage;
  @override
  String get submitDataFailMessage;
  @override
  GetGroupDataResponse get groupData;
  @override
  String get getAtlasCodeResult;
  @override
  HomeMiddleViews get currentMiddleView;
  @override
  NewsModel? get selectedNews;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}
