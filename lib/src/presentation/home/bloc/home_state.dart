part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default(RegisterType.initial) RegisterType registerFormState,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingSubmitWork,
    @Default(false) bool isLoadingGetAtlasCode,
    @Default(false) bool isRegisterSuccessful,
    @Default(false) bool isSubmitWorkSuccessful,
    @Default(false) bool isGetAtlasCodeSuccessful,
    @Default('') String registerFailMessage,
    @Default('') String submitWorkFailMessage,
    @Default('') String getAtlasCodeFailMessage,
    @Default(JahadiGroupResponse()) JahadiGroupResponse jahadiGroupData,
    @Default(null) IndividualResponse? individualData,
    @Default('') String getAtlasCodeResult,
    @Default(HomeMiddleViews.home) HomeMiddleViews currentMiddleView,
    NewsModel? selectedNews,
  }) = _Idle;
}
