part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default(false) bool isLoading,
    @Default(HomeMiddleViews.home) HomeMiddleViews currentMiddleView,
    NewsModel? selectedNews,
  }) = _Idle;
}
