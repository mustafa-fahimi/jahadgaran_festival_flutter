part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default(RegisterType.initial) RegisterType registerFormState,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingSubmitWork,
    @Default(false) bool isLoadingGetAtlasCode,
    @Default(false) bool isLoadingSubmittedWorks,
    @Default(false) bool isRegisterSuccessful,
    @Default(false) bool isSubmitWorkSuccessful,
    @Default(false) bool isGetAtlasCodeSuccessful,
    @Default(false) bool isGetSubmittedWorksSuccessful,
    @Default('') String registerFailMessage,
    @Default('') String submitWorkFailMessage,
    @Default('') String getAtlasCodeFailMessage,
    @Default('') String getSubmittedWorksFailMessage,
    @Default(JahadiGroupResponse()) JahadiGroupResponse jahadiGroupData,
    @Default(null) IndividualResponse? individualData,
    @Default(null) GroupResponse? groupData,
    @Default('') String getAtlasCodeResult,
    @Default(HomeMiddleViews.home) HomeMiddleViews currentMiddleView,
    @Default([]) List<SubmittedWork> submittedWorks,
    NewsModel? selectedNews,
  }) = _Idle;
}
