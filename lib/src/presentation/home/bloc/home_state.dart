part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingAction,
    @Default(false) bool isActionSuccessful,
    @Default('') String actionFailMessage,
    @Default(HomeMiddleViews.home) HomeMiddleViews currentMiddleView,
    NewsModel? selectedNews,
  }) = _Idle;
}
