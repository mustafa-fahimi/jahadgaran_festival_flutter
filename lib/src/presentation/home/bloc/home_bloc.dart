import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/features/core/failures/parse_failure.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/get_group_data_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/send_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/models/news_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.sendSubmittedWorkUseCase,
    this.getGroupDataUseCase,
  ) : super(const _Idle()) {
    on<_ChangeMiddleView>(_onChangeMiddleView);
    on<_GetGroupData>(_onGetGroupData);
    on<_SendSubmittedWork>(_onSendSubmittedWork);
  }

  final GetGroupDataUseCase getGroupDataUseCase;
  final SendSubmittedWorkUseCase sendSubmittedWorkUseCase;

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

  FutureOr<void> _onSendSubmittedWork(
    _SendSubmittedWork event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitData: true,
        isLoadingGetGroupData: false,
        isSubmitDataSuccessful: false,
        isGetGroupDataSuccessful: false,
        submitDataFailMessage: '',
        getGroupDataFailMessage: '',
      ),
    );
    final sendSubmittedWorkResult = await sendSubmittedWorkUseCase(
      param: Tuple1<FormData>(event.formData),
    );
    sendSubmittedWorkResult.fold(
      (l) => emit(
        state.copyWith(
          isLoadingSubmitData: false,
          submitDataFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoadingSubmitData: false,
          isSubmitDataSuccessful: true,
        ),
      ),
    );
  }

  FutureOr<void> _onGetGroupData(
    _GetGroupData event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitData: false,
        isLoadingGetGroupData: true,
        isSubmitDataSuccessful: false,
        isGetGroupDataSuccessful: false,
        submitDataFailMessage: '',
        getGroupDataFailMessage: '',
      ),
    );
    final getGroupDataResult = await getGroupDataUseCase(
      param: Tuple1<GetGroupDataParams>(event.getGroupDataParams),
    );
    getGroupDataResult.fold(
      (l) => emit(
        state.copyWith(
          isLoadingGetGroupData: false,
          getGroupDataFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoadingGetGroupData: false,
          isGetGroupDataSuccessful: true,
          sendDataStep: 2,
          groupData: r,
        ),
      ),
    );
  }
}
