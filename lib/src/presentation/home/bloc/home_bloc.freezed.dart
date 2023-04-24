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
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
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
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return changeMiddleView(view, news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return changeMiddleView?.call(view, news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
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
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return changeMiddleView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return changeMiddleView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
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
abstract class _$$_ChangeFormStateCopyWith<$Res> {
  factory _$$_ChangeFormStateCopyWith(
          _$_ChangeFormState value, $Res Function(_$_ChangeFormState) then) =
      __$$_ChangeFormStateCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterType registerFormState});
}

/// @nodoc
class __$$_ChangeFormStateCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ChangeFormState>
    implements _$$_ChangeFormStateCopyWith<$Res> {
  __$$_ChangeFormStateCopyWithImpl(
      _$_ChangeFormState _value, $Res Function(_$_ChangeFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerFormState = null,
  }) {
    return _then(_$_ChangeFormState(
      registerFormState: null == registerFormState
          ? _value.registerFormState
          : registerFormState // ignore: cast_nullable_to_non_nullable
              as RegisterType,
    ));
  }
}

/// @nodoc

class _$_ChangeFormState implements _ChangeFormState {
  const _$_ChangeFormState({required this.registerFormState});

  @override
  final RegisterType registerFormState;

  @override
  String toString() {
    return 'HomeEvent.changeFormState(registerFormState: $registerFormState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFormState &&
            (identical(other.registerFormState, registerFormState) ||
                other.registerFormState == registerFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerFormState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFormStateCopyWith<_$_ChangeFormState> get copyWith =>
      __$$_ChangeFormStateCopyWithImpl<_$_ChangeFormState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return changeFormState(registerFormState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return changeFormState?.call(registerFormState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (changeFormState != null) {
      return changeFormState(registerFormState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return changeFormState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return changeFormState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (changeFormState != null) {
      return changeFormState(this);
    }
    return orElse();
  }
}

abstract class _ChangeFormState implements HomeEvent {
  const factory _ChangeFormState(
      {required final RegisterType registerFormState}) = _$_ChangeFormState;

  RegisterType get registerFormState;
  @JsonKey(ignore: true)
  _$$_ChangeFormStateCopyWith<_$_ChangeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterJahadiGroupCopyWith<$Res> {
  factory _$$_RegisterJahadiGroupCopyWith(_$_RegisterJahadiGroup value,
          $Res Function(_$_RegisterJahadiGroup) then) =
      __$$_RegisterJahadiGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterParams registerParams});
}

/// @nodoc
class __$$_RegisterJahadiGroupCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_RegisterJahadiGroup>
    implements _$$_RegisterJahadiGroupCopyWith<$Res> {
  __$$_RegisterJahadiGroupCopyWithImpl(_$_RegisterJahadiGroup _value,
      $Res Function(_$_RegisterJahadiGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerParams = null,
  }) {
    return _then(_$_RegisterJahadiGroup(
      registerParams: null == registerParams
          ? _value.registerParams
          : registerParams // ignore: cast_nullable_to_non_nullable
              as RegisterParams,
    ));
  }
}

/// @nodoc

class _$_RegisterJahadiGroup implements _RegisterJahadiGroup {
  const _$_RegisterJahadiGroup({required this.registerParams});

  @override
  final RegisterParams registerParams;

  @override
  String toString() {
    return 'HomeEvent.registerJahadiGroup(registerParams: $registerParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterJahadiGroup &&
            (identical(other.registerParams, registerParams) ||
                other.registerParams == registerParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterJahadiGroupCopyWith<_$_RegisterJahadiGroup> get copyWith =>
      __$$_RegisterJahadiGroupCopyWithImpl<_$_RegisterJahadiGroup>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return registerJahadiGroup(registerParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return registerJahadiGroup?.call(registerParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (registerJahadiGroup != null) {
      return registerJahadiGroup(registerParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return registerJahadiGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return registerJahadiGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (registerJahadiGroup != null) {
      return registerJahadiGroup(this);
    }
    return orElse();
  }
}

abstract class _RegisterJahadiGroup implements HomeEvent {
  const factory _RegisterJahadiGroup(
      {required final RegisterParams registerParams}) = _$_RegisterJahadiGroup;

  RegisterParams get registerParams;
  @JsonKey(ignore: true)
  _$$_RegisterJahadiGroupCopyWith<_$_RegisterJahadiGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterIndividualCopyWith<$Res> {
  factory _$$_RegisterIndividualCopyWith(_$_RegisterIndividual value,
          $Res Function(_$_RegisterIndividual) then) =
      __$$_RegisterIndividualCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterParams registerParams});
}

/// @nodoc
class __$$_RegisterIndividualCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_RegisterIndividual>
    implements _$$_RegisterIndividualCopyWith<$Res> {
  __$$_RegisterIndividualCopyWithImpl(
      _$_RegisterIndividual _value, $Res Function(_$_RegisterIndividual) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerParams = null,
  }) {
    return _then(_$_RegisterIndividual(
      registerParams: null == registerParams
          ? _value.registerParams
          : registerParams // ignore: cast_nullable_to_non_nullable
              as RegisterParams,
    ));
  }
}

/// @nodoc

class _$_RegisterIndividual implements _RegisterIndividual {
  const _$_RegisterIndividual({required this.registerParams});

  @override
  final RegisterParams registerParams;

  @override
  String toString() {
    return 'HomeEvent.registerIndividual(registerParams: $registerParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterIndividual &&
            (identical(other.registerParams, registerParams) ||
                other.registerParams == registerParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterIndividualCopyWith<_$_RegisterIndividual> get copyWith =>
      __$$_RegisterIndividualCopyWithImpl<_$_RegisterIndividual>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return registerIndividual(registerParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return registerIndividual?.call(registerParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (registerIndividual != null) {
      return registerIndividual(registerParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return registerIndividual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return registerIndividual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (registerIndividual != null) {
      return registerIndividual(this);
    }
    return orElse();
  }
}

abstract class _RegisterIndividual implements HomeEvent {
  const factory _RegisterIndividual(
      {required final RegisterParams registerParams}) = _$_RegisterIndividual;

  RegisterParams get registerParams;
  @JsonKey(ignore: true)
  _$$_RegisterIndividualCopyWith<_$_RegisterIndividual> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterGroupCopyWith<$Res> {
  factory _$$_RegisterGroupCopyWith(
          _$_RegisterGroup value, $Res Function(_$_RegisterGroup) then) =
      __$$_RegisterGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterParams registerParams});
}

/// @nodoc
class __$$_RegisterGroupCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_RegisterGroup>
    implements _$$_RegisterGroupCopyWith<$Res> {
  __$$_RegisterGroupCopyWithImpl(
      _$_RegisterGroup _value, $Res Function(_$_RegisterGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerParams = null,
  }) {
    return _then(_$_RegisterGroup(
      registerParams: null == registerParams
          ? _value.registerParams
          : registerParams // ignore: cast_nullable_to_non_nullable
              as RegisterParams,
    ));
  }
}

/// @nodoc

class _$_RegisterGroup implements _RegisterGroup {
  const _$_RegisterGroup({required this.registerParams});

  @override
  final RegisterParams registerParams;

  @override
  String toString() {
    return 'HomeEvent.registerGroup(registerParams: $registerParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterGroup &&
            (identical(other.registerParams, registerParams) ||
                other.registerParams == registerParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterGroupCopyWith<_$_RegisterGroup> get copyWith =>
      __$$_RegisterGroupCopyWithImpl<_$_RegisterGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return registerGroup(registerParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return registerGroup?.call(registerParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
    TResult Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult Function(FormData formData)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (registerGroup != null) {
      return registerGroup(registerParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return registerGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return registerGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
    TResult Function(_GetAtlasCode value)? getAtlasCode,
    TResult Function(_SendSubmittedWork value)? sendSubmittedWork,
    required TResult orElse(),
  }) {
    if (registerGroup != null) {
      return registerGroup(this);
    }
    return orElse();
  }
}

abstract class _RegisterGroup implements HomeEvent {
  const factory _RegisterGroup({required final RegisterParams registerParams}) =
      _$_RegisterGroup;

  RegisterParams get registerParams;
  @JsonKey(ignore: true)
  _$$_RegisterGroupCopyWith<_$_RegisterGroup> get copyWith =>
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
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return getAtlasCode(groupSupervisorNationalCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return getAtlasCode?.call(groupSupervisorNationalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
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
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return getAtlasCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return getAtlasCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
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
    required TResult Function(RegisterType registerFormState) changeFormState,
    required TResult Function(RegisterParams registerParams)
        registerJahadiGroup,
    required TResult Function(RegisterParams registerParams) registerIndividual,
    required TResult Function(RegisterParams registerParams) registerGroup,
    required TResult Function(String groupSupervisorNationalCode) getAtlasCode,
    required TResult Function(FormData formData) sendSubmittedWork,
  }) {
    return sendSubmittedWork(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(RegisterType registerFormState)? changeFormState,
    TResult? Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult? Function(RegisterParams registerParams)? registerIndividual,
    TResult? Function(RegisterParams registerParams)? registerGroup,
    TResult? Function(String groupSupervisorNationalCode)? getAtlasCode,
    TResult? Function(FormData formData)? sendSubmittedWork,
  }) {
    return sendSubmittedWork?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(RegisterType registerFormState)? changeFormState,
    TResult Function(RegisterParams registerParams)? registerJahadiGroup,
    TResult Function(RegisterParams registerParams)? registerIndividual,
    TResult Function(RegisterParams registerParams)? registerGroup,
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
    required TResult Function(_ChangeFormState value) changeFormState,
    required TResult Function(_RegisterJahadiGroup value) registerJahadiGroup,
    required TResult Function(_RegisterIndividual value) registerIndividual,
    required TResult Function(_RegisterGroup value) registerGroup,
    required TResult Function(_GetAtlasCode value) getAtlasCode,
    required TResult Function(_SendSubmittedWork value) sendSubmittedWork,
  }) {
    return sendSubmittedWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_ChangeFormState value)? changeFormState,
    TResult? Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult? Function(_RegisterIndividual value)? registerIndividual,
    TResult? Function(_RegisterGroup value)? registerGroup,
    TResult? Function(_GetAtlasCode value)? getAtlasCode,
    TResult? Function(_SendSubmittedWork value)? sendSubmittedWork,
  }) {
    return sendSubmittedWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_ChangeFormState value)? changeFormState,
    TResult Function(_RegisterJahadiGroup value)? registerJahadiGroup,
    TResult Function(_RegisterIndividual value)? registerIndividual,
    TResult Function(_RegisterGroup value)? registerGroup,
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
  RegisterType get registerFormState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingSubmitWork => throw _privateConstructorUsedError;
  bool get isLoadingGetAtlasCode => throw _privateConstructorUsedError;
  bool get isRegisterSuccessful => throw _privateConstructorUsedError;
  bool get isSubmitWorkSuccessful => throw _privateConstructorUsedError;
  bool get isGetAtlasCodeSuccessful => throw _privateConstructorUsedError;
  String get registerFailMessage => throw _privateConstructorUsedError;
  String get submitWorkFailMessage => throw _privateConstructorUsedError;
  String get getAtlasCodeFailMessage => throw _privateConstructorUsedError;
  JahadiGroupResponse get jahadiGroupData => throw _privateConstructorUsedError;
  IndividualResponse? get individualData => throw _privateConstructorUsedError;
  String get getAtlasCodeResult => throw _privateConstructorUsedError;
  HomeMiddleViews get currentMiddleView => throw _privateConstructorUsedError;
  NewsModel? get selectedNews => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RegisterType registerFormState,
            bool isLoading,
            bool isLoadingSubmitWork,
            bool isLoadingGetAtlasCode,
            bool isRegisterSuccessful,
            bool isSubmitWorkSuccessful,
            bool isGetAtlasCodeSuccessful,
            String registerFailMessage,
            String submitWorkFailMessage,
            String getAtlasCodeFailMessage,
            JahadiGroupResponse jahadiGroupData,
            IndividualResponse? individualData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RegisterType registerFormState,
            bool isLoading,
            bool isLoadingSubmitWork,
            bool isLoadingGetAtlasCode,
            bool isRegisterSuccessful,
            bool isSubmitWorkSuccessful,
            bool isGetAtlasCodeSuccessful,
            String registerFailMessage,
            String submitWorkFailMessage,
            String getAtlasCodeFailMessage,
            JahadiGroupResponse jahadiGroupData,
            IndividualResponse? individualData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RegisterType registerFormState,
            bool isLoading,
            bool isLoadingSubmitWork,
            bool isLoadingGetAtlasCode,
            bool isRegisterSuccessful,
            bool isSubmitWorkSuccessful,
            bool isGetAtlasCodeSuccessful,
            String registerFailMessage,
            String submitWorkFailMessage,
            String getAtlasCodeFailMessage,
            JahadiGroupResponse jahadiGroupData,
            IndividualResponse? individualData,
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
      {RegisterType registerFormState,
      bool isLoading,
      bool isLoadingSubmitWork,
      bool isLoadingGetAtlasCode,
      bool isRegisterSuccessful,
      bool isSubmitWorkSuccessful,
      bool isGetAtlasCodeSuccessful,
      String registerFailMessage,
      String submitWorkFailMessage,
      String getAtlasCodeFailMessage,
      JahadiGroupResponse jahadiGroupData,
      IndividualResponse? individualData,
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
    Object? registerFormState = null,
    Object? isLoading = null,
    Object? isLoadingSubmitWork = null,
    Object? isLoadingGetAtlasCode = null,
    Object? isRegisterSuccessful = null,
    Object? isSubmitWorkSuccessful = null,
    Object? isGetAtlasCodeSuccessful = null,
    Object? registerFailMessage = null,
    Object? submitWorkFailMessage = null,
    Object? getAtlasCodeFailMessage = null,
    Object? jahadiGroupData = null,
    Object? individualData = freezed,
    Object? getAtlasCodeResult = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_value.copyWith(
      registerFormState: null == registerFormState
          ? _value.registerFormState
          : registerFormState // ignore: cast_nullable_to_non_nullable
              as RegisterType,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitWork: null == isLoadingSubmitWork
          ? _value.isLoadingSubmitWork
          : isLoadingSubmitWork // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingGetAtlasCode: null == isLoadingGetAtlasCode
          ? _value.isLoadingGetAtlasCode
          : isLoadingGetAtlasCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterSuccessful: null == isRegisterSuccessful
          ? _value.isRegisterSuccessful
          : isRegisterSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitWorkSuccessful: null == isSubmitWorkSuccessful
          ? _value.isSubmitWorkSuccessful
          : isSubmitWorkSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetAtlasCodeSuccessful: null == isGetAtlasCodeSuccessful
          ? _value.isGetAtlasCodeSuccessful
          : isGetAtlasCodeSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      registerFailMessage: null == registerFailMessage
          ? _value.registerFailMessage
          : registerFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      submitWorkFailMessage: null == submitWorkFailMessage
          ? _value.submitWorkFailMessage
          : submitWorkFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getAtlasCodeFailMessage: null == getAtlasCodeFailMessage
          ? _value.getAtlasCodeFailMessage
          : getAtlasCodeFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      jahadiGroupData: null == jahadiGroupData
          ? _value.jahadiGroupData
          : jahadiGroupData // ignore: cast_nullable_to_non_nullable
              as JahadiGroupResponse,
      individualData: freezed == individualData
          ? _value.individualData
          : individualData // ignore: cast_nullable_to_non_nullable
              as IndividualResponse?,
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
      {RegisterType registerFormState,
      bool isLoading,
      bool isLoadingSubmitWork,
      bool isLoadingGetAtlasCode,
      bool isRegisterSuccessful,
      bool isSubmitWorkSuccessful,
      bool isGetAtlasCodeSuccessful,
      String registerFailMessage,
      String submitWorkFailMessage,
      String getAtlasCodeFailMessage,
      JahadiGroupResponse jahadiGroupData,
      IndividualResponse? individualData,
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
    Object? registerFormState = null,
    Object? isLoading = null,
    Object? isLoadingSubmitWork = null,
    Object? isLoadingGetAtlasCode = null,
    Object? isRegisterSuccessful = null,
    Object? isSubmitWorkSuccessful = null,
    Object? isGetAtlasCodeSuccessful = null,
    Object? registerFailMessage = null,
    Object? submitWorkFailMessage = null,
    Object? getAtlasCodeFailMessage = null,
    Object? jahadiGroupData = null,
    Object? individualData = freezed,
    Object? getAtlasCodeResult = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_$_Idle(
      registerFormState: null == registerFormState
          ? _value.registerFormState
          : registerFormState // ignore: cast_nullable_to_non_nullable
              as RegisterType,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitWork: null == isLoadingSubmitWork
          ? _value.isLoadingSubmitWork
          : isLoadingSubmitWork // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingGetAtlasCode: null == isLoadingGetAtlasCode
          ? _value.isLoadingGetAtlasCode
          : isLoadingGetAtlasCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterSuccessful: null == isRegisterSuccessful
          ? _value.isRegisterSuccessful
          : isRegisterSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitWorkSuccessful: null == isSubmitWorkSuccessful
          ? _value.isSubmitWorkSuccessful
          : isSubmitWorkSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetAtlasCodeSuccessful: null == isGetAtlasCodeSuccessful
          ? _value.isGetAtlasCodeSuccessful
          : isGetAtlasCodeSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      registerFailMessage: null == registerFailMessage
          ? _value.registerFailMessage
          : registerFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      submitWorkFailMessage: null == submitWorkFailMessage
          ? _value.submitWorkFailMessage
          : submitWorkFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getAtlasCodeFailMessage: null == getAtlasCodeFailMessage
          ? _value.getAtlasCodeFailMessage
          : getAtlasCodeFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      jahadiGroupData: null == jahadiGroupData
          ? _value.jahadiGroupData
          : jahadiGroupData // ignore: cast_nullable_to_non_nullable
              as JahadiGroupResponse,
      individualData: freezed == individualData
          ? _value.individualData
          : individualData // ignore: cast_nullable_to_non_nullable
              as IndividualResponse?,
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
      {this.registerFormState = RegisterType.initial,
      this.isLoading = false,
      this.isLoadingSubmitWork = false,
      this.isLoadingGetAtlasCode = false,
      this.isRegisterSuccessful = false,
      this.isSubmitWorkSuccessful = false,
      this.isGetAtlasCodeSuccessful = false,
      this.registerFailMessage = '',
      this.submitWorkFailMessage = '',
      this.getAtlasCodeFailMessage = '',
      this.jahadiGroupData = const JahadiGroupResponse(),
      this.individualData = null,
      this.getAtlasCodeResult = '',
      this.currentMiddleView = HomeMiddleViews.home,
      this.selectedNews});

  @override
  @JsonKey()
  final RegisterType registerFormState;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingSubmitWork;
  @override
  @JsonKey()
  final bool isLoadingGetAtlasCode;
  @override
  @JsonKey()
  final bool isRegisterSuccessful;
  @override
  @JsonKey()
  final bool isSubmitWorkSuccessful;
  @override
  @JsonKey()
  final bool isGetAtlasCodeSuccessful;
  @override
  @JsonKey()
  final String registerFailMessage;
  @override
  @JsonKey()
  final String submitWorkFailMessage;
  @override
  @JsonKey()
  final String getAtlasCodeFailMessage;
  @override
  @JsonKey()
  final JahadiGroupResponse jahadiGroupData;
  @override
  @JsonKey()
  final IndividualResponse? individualData;
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
    return 'HomeState.idle(registerFormState: $registerFormState, isLoading: $isLoading, isLoadingSubmitWork: $isLoadingSubmitWork, isLoadingGetAtlasCode: $isLoadingGetAtlasCode, isRegisterSuccessful: $isRegisterSuccessful, isSubmitWorkSuccessful: $isSubmitWorkSuccessful, isGetAtlasCodeSuccessful: $isGetAtlasCodeSuccessful, registerFailMessage: $registerFailMessage, submitWorkFailMessage: $submitWorkFailMessage, getAtlasCodeFailMessage: $getAtlasCodeFailMessage, jahadiGroupData: $jahadiGroupData, individualData: $individualData, getAtlasCodeResult: $getAtlasCodeResult, currentMiddleView: $currentMiddleView, selectedNews: $selectedNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.registerFormState, registerFormState) ||
                other.registerFormState == registerFormState) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingSubmitWork, isLoadingSubmitWork) ||
                other.isLoadingSubmitWork == isLoadingSubmitWork) &&
            (identical(other.isLoadingGetAtlasCode, isLoadingGetAtlasCode) ||
                other.isLoadingGetAtlasCode == isLoadingGetAtlasCode) &&
            (identical(other.isRegisterSuccessful, isRegisterSuccessful) ||
                other.isRegisterSuccessful == isRegisterSuccessful) &&
            (identical(other.isSubmitWorkSuccessful, isSubmitWorkSuccessful) ||
                other.isSubmitWorkSuccessful == isSubmitWorkSuccessful) &&
            (identical(
                    other.isGetAtlasCodeSuccessful, isGetAtlasCodeSuccessful) ||
                other.isGetAtlasCodeSuccessful == isGetAtlasCodeSuccessful) &&
            (identical(other.registerFailMessage, registerFailMessage) ||
                other.registerFailMessage == registerFailMessage) &&
            (identical(other.submitWorkFailMessage, submitWorkFailMessage) ||
                other.submitWorkFailMessage == submitWorkFailMessage) &&
            (identical(
                    other.getAtlasCodeFailMessage, getAtlasCodeFailMessage) ||
                other.getAtlasCodeFailMessage == getAtlasCodeFailMessage) &&
            (identical(other.jahadiGroupData, jahadiGroupData) ||
                other.jahadiGroupData == jahadiGroupData) &&
            (identical(other.individualData, individualData) ||
                other.individualData == individualData) &&
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
      registerFormState,
      isLoading,
      isLoadingSubmitWork,
      isLoadingGetAtlasCode,
      isRegisterSuccessful,
      isSubmitWorkSuccessful,
      isGetAtlasCodeSuccessful,
      registerFailMessage,
      submitWorkFailMessage,
      getAtlasCodeFailMessage,
      jahadiGroupData,
      individualData,
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
            RegisterType registerFormState,
            bool isLoading,
            bool isLoadingSubmitWork,
            bool isLoadingGetAtlasCode,
            bool isRegisterSuccessful,
            bool isSubmitWorkSuccessful,
            bool isGetAtlasCodeSuccessful,
            String registerFailMessage,
            String submitWorkFailMessage,
            String getAtlasCodeFailMessage,
            JahadiGroupResponse jahadiGroupData,
            IndividualResponse? individualData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) {
    return idle(
        registerFormState,
        isLoading,
        isLoadingSubmitWork,
        isLoadingGetAtlasCode,
        isRegisterSuccessful,
        isSubmitWorkSuccessful,
        isGetAtlasCodeSuccessful,
        registerFailMessage,
        submitWorkFailMessage,
        getAtlasCodeFailMessage,
        jahadiGroupData,
        individualData,
        getAtlasCodeResult,
        currentMiddleView,
        selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RegisterType registerFormState,
            bool isLoading,
            bool isLoadingSubmitWork,
            bool isLoadingGetAtlasCode,
            bool isRegisterSuccessful,
            bool isSubmitWorkSuccessful,
            bool isGetAtlasCodeSuccessful,
            String registerFailMessage,
            String submitWorkFailMessage,
            String getAtlasCodeFailMessage,
            JahadiGroupResponse jahadiGroupData,
            IndividualResponse? individualData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) {
    return idle?.call(
        registerFormState,
        isLoading,
        isLoadingSubmitWork,
        isLoadingGetAtlasCode,
        isRegisterSuccessful,
        isSubmitWorkSuccessful,
        isGetAtlasCodeSuccessful,
        registerFailMessage,
        submitWorkFailMessage,
        getAtlasCodeFailMessage,
        jahadiGroupData,
        individualData,
        getAtlasCodeResult,
        currentMiddleView,
        selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RegisterType registerFormState,
            bool isLoading,
            bool isLoadingSubmitWork,
            bool isLoadingGetAtlasCode,
            bool isRegisterSuccessful,
            bool isSubmitWorkSuccessful,
            bool isGetAtlasCodeSuccessful,
            String registerFailMessage,
            String submitWorkFailMessage,
            String getAtlasCodeFailMessage,
            JahadiGroupResponse jahadiGroupData,
            IndividualResponse? individualData,
            String getAtlasCodeResult,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(
          registerFormState,
          isLoading,
          isLoadingSubmitWork,
          isLoadingGetAtlasCode,
          isRegisterSuccessful,
          isSubmitWorkSuccessful,
          isGetAtlasCodeSuccessful,
          registerFailMessage,
          submitWorkFailMessage,
          getAtlasCodeFailMessage,
          jahadiGroupData,
          individualData,
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
      {final RegisterType registerFormState,
      final bool isLoading,
      final bool isLoadingSubmitWork,
      final bool isLoadingGetAtlasCode,
      final bool isRegisterSuccessful,
      final bool isSubmitWorkSuccessful,
      final bool isGetAtlasCodeSuccessful,
      final String registerFailMessage,
      final String submitWorkFailMessage,
      final String getAtlasCodeFailMessage,
      final JahadiGroupResponse jahadiGroupData,
      final IndividualResponse? individualData,
      final String getAtlasCodeResult,
      final HomeMiddleViews currentMiddleView,
      final NewsModel? selectedNews}) = _$_Idle;

  @override
  RegisterType get registerFormState;
  @override
  bool get isLoading;
  @override
  bool get isLoadingSubmitWork;
  @override
  bool get isLoadingGetAtlasCode;
  @override
  bool get isRegisterSuccessful;
  @override
  bool get isSubmitWorkSuccessful;
  @override
  bool get isGetAtlasCodeSuccessful;
  @override
  String get registerFailMessage;
  @override
  String get submitWorkFailMessage;
  @override
  String get getAtlasCodeFailMessage;
  @override
  JahadiGroupResponse get jahadiGroupData;
  @override
  IndividualResponse? get individualData;
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
