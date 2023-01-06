import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/failures/parse_failure.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart';
import 'package:jahadgaran_festival/src/features/user/domain/models/user.dart';
import 'package:jahadgaran_festival/src/features/user/domain/use_cases/get_users_use_case.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.getUsersUseCase) : super(const _Idle()) {
    on<_GetUsers>(_onGetUsers);
  }

  final GetUsersUseCase getUsersUseCase;

  FutureOr<void> _onGetUsers(
    _GetUsers event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(const _Idle(isLoading: true));
      final getUsersResult = await getUsersUseCase(
        param: const Tuple1(1),
      );
      getUsersResult.fold(
        (l) {
          AppHelper().logMessage(l.toMessage());
          emit(state.copyWith(isLoading: false));
        },
        (r) => emit(
          state.copyWith(
            isLoading: false,
            users: r.users,
          ),
        ),
      );
    } catch (e) {
      AppHelper().logMessage(e.toString());
    }
  }
}
