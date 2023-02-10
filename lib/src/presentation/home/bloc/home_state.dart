part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default(false) bool isLoading,
    @Default(HomeMiddleViews.register) HomeMiddleViews currentMiddleView,
  }) = _Idle;
}
