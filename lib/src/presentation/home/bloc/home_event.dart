part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeMiddleView({
    required HomeMiddleViews view,
    NewsModel? news,
  }) = _ChangeMiddleView;

  const factory HomeEvent.changeFormState({
    required RegisterType registerFormState,
  }) = _ChangeFormState;

  const factory HomeEvent.registerJahadiGroup({
    required RegisterParams registerParams,
  }) = _RegisterJahadiGroup;

  const factory HomeEvent.registerIndividual({
    required RegisterParams registerParams,
  }) = _RegisterIndividual;

  const factory HomeEvent.registerGroup({
    required RegisterParams registerParams,
  }) = _RegisterGroup;

  const factory HomeEvent.getAtlasCode({
    required String groupSupervisorNationalCode,
  }) = _GetAtlasCode;

  const factory HomeEvent.jahadiGroupSubmittedWork({
    required FormData formData,
  }) = _JahadiGroupSubmittedWork;

  const factory HomeEvent.individualSubmittedWork({
    required FormData formData,
  }) = _IndividualSubmittedWork;

  const factory HomeEvent.groupSubmittedWork({
    required FormData formData,
  }) = _GroupSubmittedWork;

  const factory HomeEvent.getSubmittedWorks() = _GetSubmittedWorks;
}
