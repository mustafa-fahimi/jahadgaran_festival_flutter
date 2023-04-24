part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default(1) int sendDataStep,
    @Default(false) bool isLoadingGetGroupData,
    @Default(false) bool isLoadingSubmitData,
    @Default(false) bool isGetGroupDataSuccessful,
    @Default(false) bool isSubmitDataSuccessful,
    @Default('') String getGroupDataFailMessage,
    @Default('') String submitDataFailMessage,
    @Default(GetGroupDataResponse()) GetGroupDataResponse groupData,
    @Default('') String getAtlasCodeResult,
    @Default(HomeMiddleViews.home) HomeMiddleViews currentMiddleView,
    NewsModel? selectedNews,
  }) = _Idle;
}
