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
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(FormData formData) sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(FormData formData)? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(FormData formData)? sendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_SendData value) sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_SendData value)? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_SendData value)? sendData,
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
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(FormData formData) sendData,
  }) {
    return changeMiddleView(view, news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(FormData formData)? sendData,
  }) {
    return changeMiddleView?.call(view, news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(FormData formData)? sendData,
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
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_SendData value) sendData,
  }) {
    return changeMiddleView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_SendData value)? sendData,
  }) {
    return changeMiddleView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_SendData value)? sendData,
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
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(FormData formData) sendData,
  }) {
    return getGroupData(getGroupDataParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(FormData formData)? sendData,
  }) {
    return getGroupData?.call(getGroupDataParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(FormData formData)? sendData,
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
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_SendData value) sendData,
  }) {
    return getGroupData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_SendData value)? sendData,
  }) {
    return getGroupData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_SendData value)? sendData,
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
abstract class _$$_SendDataCopyWith<$Res> {
  factory _$$_SendDataCopyWith(
          _$_SendData value, $Res Function(_$_SendData) then) =
      __$$_SendDataCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData formData});
}

/// @nodoc
class __$$_SendDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_SendData>
    implements _$$_SendDataCopyWith<$Res> {
  __$$_SendDataCopyWithImpl(
      _$_SendData _value, $Res Function(_$_SendData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
  }) {
    return _then(_$_SendData(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$_SendData implements _SendData {
  const _$_SendData({required this.formData});

  @override
  final FormData formData;

  @override
  String toString() {
    return 'HomeEvent.sendData(formData: $formData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendData &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendDataCopyWith<_$_SendData> get copyWith =>
      __$$_SendDataCopyWithImpl<_$_SendData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
    required TResult Function(GetGroupDataParams getGroupDataParams)
        getGroupData,
    required TResult Function(FormData formData) sendData,
  }) {
    return sendData(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult? Function(FormData formData)? sendData,
  }) {
    return sendData?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(GetGroupDataParams getGroupDataParams)? getGroupData,
    TResult Function(FormData formData)? sendData,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_GetGroupData value) getGroupData,
    required TResult Function(_SendData value) sendData,
  }) {
    return sendData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_GetGroupData value)? getGroupData,
    TResult? Function(_SendData value)? sendData,
  }) {
    return sendData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    TResult Function(_GetGroupData value)? getGroupData,
    TResult Function(_SendData value)? sendData,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData(this);
    }
    return orElse();
  }
}

abstract class _SendData implements HomeEvent {
  const factory _SendData({required final FormData formData}) = _$_SendData;

  FormData get formData;
  @JsonKey(ignore: true)
  _$$_SendDataCopyWith<_$_SendData> get copyWith =>
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
  final HomeMiddleViews currentMiddleView;
  @override
  final NewsModel? selectedNews;

  @override
  String toString() {
    return 'HomeState.idle(sendDataStep: $sendDataStep, isLoadingGetGroupData: $isLoadingGetGroupData, isLoadingSubmitData: $isLoadingSubmitData, isGetGroupDataSuccessful: $isGetGroupDataSuccessful, isSubmitDataSuccessful: $isSubmitDataSuccessful, getGroupDataFailMessage: $getGroupDataFailMessage, submitDataFailMessage: $submitDataFailMessage, groupData: $groupData, currentMiddleView: $currentMiddleView, selectedNews: $selectedNews)';
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
  HomeMiddleViews get currentMiddleView;
  @override
  NewsModel? get selectedNews;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}
