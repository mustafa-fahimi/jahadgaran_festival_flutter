import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/features/user/domain/use_cases/get_users_use_case.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.getUsersUseCase) : super(const _Idle()) {
    on<_ChangeMiddleView>(_onChangeMiddleView);
  }

  final GetUsersUseCase getUsersUseCase;

  FutureOr<void> _onChangeMiddleView(
    _ChangeMiddleView event,
    Emitter<HomeState> emit,
  ) async =>
      emit(_Idle(currentMiddleView: event.view));
}
