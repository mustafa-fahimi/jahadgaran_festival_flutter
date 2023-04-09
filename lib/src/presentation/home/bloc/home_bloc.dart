import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/features/core/failures/parse_failure.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/send_data_use_case.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/models/news_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.sendDataUseCase) : super(const _Idle()) {
    on<_ChangeMiddleView>(_onChangeMiddleView);
    on<_SendData>(_onSendData);
  }

  final SendDataUseCase sendDataUseCase;

  FutureOr<void> _onChangeMiddleView(
    _ChangeMiddleView event,
    Emitter<HomeState> emit,
  ) async =>
      emit(
        _Idle(
          currentMiddleView: event.view,
          selectedNews: event.news,
        ),
      );

  FutureOr<void> _onSendData(
    _SendData event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingAction: true,
        isActionSuccessful: false,
        actionFailMessage: '',
      ),
    );
    final sendDataResult = await sendDataUseCase(
      param: Tuple1<FormData>(event.formData),
    );
    sendDataResult.fold(
      (l) => emit(
        state.copyWith(
          isLoadingAction: false,
          actionFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoadingAction: false,
          isActionSuccessful: true,
          actionFailMessage: '',
        ),
      ),
    );
  }
}
