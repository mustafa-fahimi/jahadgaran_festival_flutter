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
  HomeMiddleViews get view => throw _privateConstructorUsedError;
  NewsModel? get news => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeMiddleViews view, NewsModel? news)
        changeMiddleView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMiddleView value) changeMiddleView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({HomeMiddleViews view, NewsModel? news});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as HomeMiddleViews,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeMiddleViewCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$_ChangeMiddleViewCopyWith(
          _$_ChangeMiddleView value, $Res Function(_$_ChangeMiddleView) then) =
      __$$_ChangeMiddleViewCopyWithImpl<$Res>;
  @override
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
  }) {
    return changeMiddleView(view, news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
  }) {
    return changeMiddleView?.call(view, news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeMiddleViews view, NewsModel? news)? changeMiddleView,
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
  }) {
    return changeMiddleView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMiddleView value)? changeMiddleView,
  }) {
    return changeMiddleView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMiddleView value)? changeMiddleView,
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

  @override
  HomeMiddleViews get view;
  @override
  NewsModel? get news;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeMiddleViewCopyWith<_$_ChangeMiddleView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  HomeMiddleViews get currentMiddleView => throw _privateConstructorUsedError;
  NewsModel? get selectedNews => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, HomeMiddleViews currentMiddleView,
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
      {bool isLoading,
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
    Object? isLoading = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {bool isLoading,
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
    Object? isLoading = null,
    Object? currentMiddleView = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {this.isLoading = false,
      this.currentMiddleView = HomeMiddleViews.home,
      this.selectedNews});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final HomeMiddleViews currentMiddleView;
  @override
  final NewsModel? selectedNews;

  @override
  String toString() {
    return 'HomeState.idle(isLoading: $isLoading, currentMiddleView: $currentMiddleView, selectedNews: $selectedNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentMiddleView, currentMiddleView) ||
                other.currentMiddleView == currentMiddleView) &&
            (identical(other.selectedNews, selectedNews) ||
                other.selectedNews == selectedNews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, currentMiddleView, selectedNews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)
        idle,
  }) {
    return idle(isLoading, currentMiddleView, selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
  }) {
    return idle?.call(isLoading, currentMiddleView, selectedNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, HomeMiddleViews currentMiddleView,
            NewsModel? selectedNews)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, currentMiddleView, selectedNews);
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
      {final bool isLoading,
      final HomeMiddleViews currentMiddleView,
      final NewsModel? selectedNews}) = _$_Idle;

  @override
  bool get isLoading;
  @override
  HomeMiddleViews get currentMiddleView;
  @override
  NewsModel? get selectedNews;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}
