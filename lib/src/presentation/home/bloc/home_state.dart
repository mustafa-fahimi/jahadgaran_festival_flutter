part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default(1) int sendDataStep,
    @Default(false) bool isLoadingCheckInformation,
    @Default(false) bool isLoadingSubmitData,
    @Default(false) bool isCheckInformationSuccessful,
    @Default(false) bool isSubmitDataSuccessful,
    @Default('') String checkInformationFailMessage,
    @Default('') String submitDataFailMessage,
    @Default(HomeMiddleViews.home) HomeMiddleViews currentMiddleView,
    NewsModel? selectedNews,
  }) = _Idle;
}
