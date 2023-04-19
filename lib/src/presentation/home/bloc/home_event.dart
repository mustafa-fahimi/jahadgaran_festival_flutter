part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeMiddleView({
    required HomeMiddleViews view,
    NewsModel? news,
  }) = _ChangeMiddleView;

  const factory HomeEvent.getGroupData({
    required GetGroupDataParams getGroupDataParams,
  }) = _GetGroupData;

  const factory HomeEvent.sendSubmittedWork({
    required FormData formData,
  }) = _SendSubmittedWork;
}
