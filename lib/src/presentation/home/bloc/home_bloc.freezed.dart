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
    required TResult Function(FormData formData) sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(FormData formData)? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult Function(FormData formData)? sendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
    required TResult Function(_SendData value) sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_SendData value)? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
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
    required TResult Function(FormData formData) sendData,
  }) {
    return changeMiddleView(view, news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(FormData formData)? sendData,
  }) {
    return changeMiddleView?.call(view, news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
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
    required TResult Function(_SendData value) sendData,
  }) {
    return changeMiddleView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_SendData value)? sendData,
  }) {
    return changeMiddleView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
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
    required TResult Function(FormData formData) sendData,
  }) {
    return sendData(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    TResult? Function(FormData formData)? sendData,
  }) {
    return sendData?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
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
    required TResult Function(_SendData value) sendData,
  }) {
    return sendData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
    TResult? Function(_SendData value)? sendData,
  }) {
    return sendData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
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
  bool get isLoadingCheckInformation => throw _privateConstructorUsedError;
  bool get isLoadingSubmitData => throw _privateConstructorUsedError;
  bool get isCheckInformationSuccessful => throw _privateConstructorUsedError;
  bool get isSubmitDataSuccessful => throw _privateConstructorUsedError;
  String get checkInformationFailMessage => throw _privateConstructorUsedError;
  String get submitDataFailMessage => throw _privateConstructorUsedError;
  HomeMiddleViews get currentMiddleView => throw _privateConstructorUsedError;
  NewsModel? get selectedNews => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int sendDataStep,
            bool isLoadingCheckInformation,
            bool isLoadingSubmitData,
            bool isCheckInformationSuccessful,
            bool isSubmitDataSuccessful,
            String checkInformationFailMessage,
            String submitDataFailMessage,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int sendDataStep,
            bool isLoadingCheckInformation,
            bool isLoadingSubmitData,
            bool isCheckInformationSuccessful,
            bool isSubmitDataSuccessful,
            String checkInformationFailMessage,
            String submitDataFailMessage,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int sendDataStep,
            bool isLoadingCheckInformation,
            bool isLoadingSubmitData,
            bool isCheckInformationSuccessful,
            bool isSubmitDataSuccessful,
            String checkInformationFailMessage,
            String submitDataFailMessage,
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
      bool isLoadingCheckInformation,
      bool isLoadingSubmitData,
      bool isCheckInformationSuccessful,
      bool isSubmitDataSuccessful,
      String checkInformationFailMessage,
      String submitDataFailMessage,
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
    Object? isLoadingCheckInformation = null,
    Object? isLoadingSubmitData = null,
    Object? isCheckInformationSuccessful = null,
    Object? isSubmitDataSuccessful = null,
    Object? checkInformationFailMessage = null,
    Object? submitDataFailMessage = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_value.copyWith(
      sendDataStep: null == sendDataStep
          ? _value.sendDataStep
          : sendDataStep // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingCheckInformation: null == isLoadingCheckInformation
          ? _value.isLoadingCheckInformation
          : isLoadingCheckInformation // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitData: null == isLoadingSubmitData
          ? _value.isLoadingSubmitData
          : isLoadingSubmitData // ignore: cast_nullable_to_non_nullable
              as bool,
      isCheckInformationSuccessful: null == isCheckInformationSuccessful
          ? _value.isCheckInformationSuccessful
          : isCheckInformationSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitDataSuccessful: null == isSubmitDataSuccessful
          ? _value.isSubmitDataSuccessful
          : isSubmitDataSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      checkInformationFailMessage: null == checkInformationFailMessage
          ? _value.checkInformationFailMessage
          : checkInformationFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      submitDataFailMessage: null == submitDataFailMessage
          ? _value.submitDataFailMessage
          : submitDataFailMessage // ignore: cast_nullable_to_non_nullable
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
      bool isLoadingCheckInformation,
      bool isLoadingSubmitData,
      bool isCheckInformationSuccessful,
      bool isSubmitDataSuccessful,
      String checkInformationFailMessage,
      String submitDataFailMessage,
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
    Object? isLoadingCheckInformation = null,
    Object? isLoadingSubmitData = null,
    Object? isCheckInformationSuccessful = null,
    Object? isSubmitDataSuccessful = null,
    Object? checkInformationFailMessage = null,
    Object? submitDataFailMessage = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_$_Idle(
      sendDataStep: null == sendDataStep
          ? _value.sendDataStep
          : sendDataStep // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingCheckInformation: null == isLoadingCheckInformation
          ? _value.isLoadingCheckInformation
          : isLoadingCheckInformation // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitData: null == isLoadingSubmitData
          ? _value.isLoadingSubmitData
          : isLoadingSubmitData // ignore: cast_nullable_to_non_nullable
              as bool,
      isCheckInformationSuccessful: null == isCheckInformationSuccessful
          ? _value.isCheckInformationSuccessful
          : isCheckInformationSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitDataSuccessful: null == isSubmitDataSuccessful
          ? _value.isSubmitDataSuccessful
          : isSubmitDataSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      checkInformationFailMessage: null == checkInformationFailMessage
          ? _value.checkInformationFailMessage
          : checkInformationFailMessage // ignore: cast_nullable_to_non_nullable
              as String,
      submitDataFailMessage: null == submitDataFailMessage
          ? _value.submitDataFailMessage
          : submitDataFailMessage // ignore: cast_nullable_to_non_nullable
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
      this.isLoadingCheckInformation = false,
      this.isLoadingSubmitData = false,
      this.isCheckInformationSuccessful = false,
      this.isSubmitDataSuccessful = false,
      this.checkInformationFailMessage = '',
      this.submitDataFailMessage = '',
      this.currentMiddleView = HomeMiddleViews.home,
      this.selectedNews});

  @override
  @JsonKey()
  final int sendDataStep;
  @override
  @JsonKey()
  final bool isLoadingCheckInformation;
  @override
  @JsonKey()
  final bool isLoadingSubmitData;
  @override
  @JsonKey()
  final bool isCheckInformationSuccessful;
  @override
  @JsonKey()
  final bool isSubmitDataSuccessful;
  @override
  @JsonKey()
  final String checkInformationFailMessage;
  @override
  @JsonKey()
  final String submitDataFailMessage;
  @override
  @JsonKey()
  final HomeMiddleViews currentMiddleView;
  @override
  final NewsModel? selectedNews;

  @override
  String toString() {
    return 'HomeState.idle(sendDataStep: $sendDataStep, isLoadingCheckInformation: $isLoadingCheckInformation, isLoadingSubmitData: $isLoadingSubmitData, isCheckInformationSuccessful: $isCheckInformationSuccessful, isSubmitDataSuccessful: $isSubmitDataSuccessful, checkInformationFailMessage: $checkInformationFailMessage, submitDataFailMessage: $submitDataFailMessage, currentMiddleView: $currentMiddleView, selectedNews: $selectedNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.sendDataStep, sendDataStep) ||
                other.sendDataStep == sendDataStep) &&
            (identical(other.isLoadingCheckInformation,
                    isLoadingCheckInformation) ||
                other.isLoadingCheckInformation == isLoadingCheckInformation) &&
            (identical(other.isLoadingSubmitData, isLoadingSubmitData) ||
                other.isLoadingSubmitData == isLoadingSubmitData) &&
            (identical(other.isCheckInformationSuccessful,
                    isCheckInformationSuccessful) ||
                other.isCheckInformationSuccessful ==
                    isCheckInformationSuccessful) &&
            (identical(other.isSubmitDataSuccessful, isSubmitDataSuccessful) ||
                other.isSubmitDataSuccessful == isSubmitDataSuccessful) &&
            (identical(other.checkInformationFailMessage,
                    checkInformationFailMessage) ||
                other.checkInformationFailMessage ==
                    checkInformationFailMessage) &&
            (identical(other.submitDataFailMessage, submitDataFailMessage) ||
                other.submitDataFailMessage == submitDataFailMessage) &&
            (identical(other.currentMiddleView, currentMiddleView) ||
                other.currentMiddleView == currentMiddleView) &&
            (identical(other.selectedNews, selectedNews) ||
                other.selectedNews == selectedNews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sendDataStep,
      isLoadingCheckInformation,
      isLoadingSubmitData,
      isCheckInformationSuccessful,
      isSubmitDataSuccessful,
      checkInformationFailMessage,
      submitDataFailMessage,
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
            bool isLoadingCheckInformation,
            bool isLoadingSubmitData,
            bool isCheckInformationSuccessful,
            bool isSubmitDataSuccessful,
            String checkInformationFailMessage,
            String submitDataFailMessage,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) {
    return idle(
        sendDataStep,
        isLoadingCheckInformation,
        isLoadingSubmitData,
        isCheckInformationSuccessful,
        isSubmitDataSuccessful,
        checkInformationFailMessage,
        submitDataFailMessage,
        currentMiddleView,
        selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int sendDataStep,
            bool isLoadingCheckInformation,
            bool isLoadingSubmitData,
            bool isCheckInformationSuccessful,
            bool isSubmitDataSuccessful,
            String checkInformationFailMessage,
            String submitDataFailMessage,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) {
    return idle?.call(
        sendDataStep,
        isLoadingCheckInformation,
        isLoadingSubmitData,
        isCheckInformationSuccessful,
        isSubmitDataSuccessful,
        checkInformationFailMessage,
        submitDataFailMessage,
        currentMiddleView,
        selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int sendDataStep,
            bool isLoadingCheckInformation,
            bool isLoadingSubmitData,
            bool isCheckInformationSuccessful,
            bool isSubmitDataSuccessful,
            String checkInformationFailMessage,
            String submitDataFailMessage,
            HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(
          sendDataStep,
          isLoadingCheckInformation,
          isLoadingSubmitData,
          isCheckInformationSuccessful,
          isSubmitDataSuccessful,
          checkInformationFailMessage,
          submitDataFailMessage,
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
      final bool isLoadingCheckInformation,
      final bool isLoadingSubmitData,
      final bool isCheckInformationSuccessful,
      final bool isSubmitDataSuccessful,
      final String checkInformationFailMessage,
      final String submitDataFailMessage,
      final HomeMiddleViews currentMiddleView,
      final NewsModel? selectedNews}) = _$_Idle;

  @override
  int get sendDataStep;
  @override
  bool get isLoadingCheckInformation;
  @override
  bool get isLoadingSubmitData;
  @override
  bool get isCheckInformationSuccessful;
  @override
  bool get isSubmitDataSuccessful;
  @override
  String get checkInformationFailMessage;
  @override
  String get submitDataFailMessage;
  @override
  HomeMiddleViews get currentMiddleView;
  @override
  NewsModel? get selectedNews;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}
