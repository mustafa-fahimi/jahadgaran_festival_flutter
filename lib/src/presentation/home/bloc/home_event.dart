part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeMiddleView({
    required HomeMiddleViews view,
  }) = _ChangeMiddleView;
}
