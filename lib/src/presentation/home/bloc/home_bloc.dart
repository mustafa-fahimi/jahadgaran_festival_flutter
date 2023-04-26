import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/features/core/enums/register_type_enum.dart';
import 'package:jahadgaran_festival/src/features/core/failures/parse_failure.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/individual_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/jahadi_group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/register_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/get_atlas_code_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/group_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/individual_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/jahadi_group_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/register_individual_group_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/register_jahadi_group_use_case.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/models/news_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.jahadiGroupSubmittedWorkUseCase,
    this.registerJahadiGroupUseCase,
    this.registerIndividualUseCase,
    this.getAtlasCodeUseCase,
    this.individualSubmittedWorkUseCase,
    this.groupSubmittedWorkUseCase,
  ) : super(const _Idle()) {
    on<_ChangeMiddleView>(_onChangeMiddleView);
    on<_ChangeFormState>(_onChangeFormState);
    on<_RegisterJahadiGroup>(_onRegisterJahadiGroup);
    on<_RegisterIndividual>(_onRegisterIndividual);
    on<_JahadiGroupSubmittedWork>(_onJahadiGroupSubmittedWork);
    on<_IndividualSubmittedWork>(_onIndividualSubmittedWork);
    on<_GroupSubmittedWork>(_onGroupSubmittedWork);
    on<_GetAtlasCode>(_onGetAtlasCode);
  }

  final RegisterJahadiGroupUseCase registerJahadiGroupUseCase;
  final RegisterIndividualUseCase registerIndividualUseCase;
  final JahadiGroupSubmittedWorkUseCase jahadiGroupSubmittedWorkUseCase;
  final IndividualSubmittedWorkUseCase individualSubmittedWorkUseCase;
  final GroupSubmittedWorkUseCase groupSubmittedWorkUseCase;
  final GetAtlasCodeUseCase getAtlasCodeUseCase;

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

  FutureOr<void> _onChangeFormState(
    _ChangeFormState event,
    Emitter<HomeState> emit,
  ) async =>
      emit(state.copyWith(registerFormState: event.registerFormState));

  FutureOr<void> _onJahadiGroupSubmittedWork(
    _JahadiGroupSubmittedWork event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitWork: true,
        isLoading: false,
        isSubmitWorkSuccessful: false,
        isRegisterSuccessful: false,
        submitWorkFailMessage: '',
        registerFailMessage: '',
      ),
    );
    final jahadiGroupSubmittedWorkResult =
        await jahadiGroupSubmittedWorkUseCase(
      param: Tuple1<FormData>(event.formData),
    );
    jahadiGroupSubmittedWorkResult.fold(
      (l) => emit(
        state.copyWith(
          isLoadingSubmitWork: false,
          submitWorkFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoadingSubmitWork: false,
          isSubmitWorkSuccessful: true,
          registerFormState: RegisterType.initial,
        ),
      ),
    );
  }

  FutureOr<void> _onIndividualSubmittedWork(
    _IndividualSubmittedWork event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitWork: true,
        isLoading: false,
        isSubmitWorkSuccessful: false,
        isRegisterSuccessful: false,
        submitWorkFailMessage: '',
        registerFailMessage: '',
      ),
    );
    final individualSubmittedWorkResult = await individualSubmittedWorkUseCase(
      param: Tuple1<FormData>(event.formData),
    );
    individualSubmittedWorkResult.fold(
      (l) => emit(
        state.copyWith(
          isLoadingSubmitWork: false,
          submitWorkFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoadingSubmitWork: false,
          isSubmitWorkSuccessful: true,
          registerFormState: RegisterType.initial,
        ),
      ),
    );
  }

  FutureOr<void> _onGroupSubmittedWork(
    _GroupSubmittedWork event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitWork: true,
        isLoading: false,
        isSubmitWorkSuccessful: false,
        isRegisterSuccessful: false,
        submitWorkFailMessage: '',
        registerFailMessage: '',
      ),
    );
    final groupSubmittedWorkResult = await groupSubmittedWorkUseCase(
      param: Tuple1<FormData>(event.formData),
    );
    groupSubmittedWorkResult.fold(
      (l) => emit(
        state.copyWith(
          isLoadingSubmitWork: false,
          submitWorkFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoadingSubmitWork: false,
          isSubmitWorkSuccessful: true,
          registerFormState: RegisterType.initial,
        ),
      ),
    );
  }

  FutureOr<void> _onRegisterJahadiGroup(
    _RegisterJahadiGroup event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitWork: false,
        isLoading: true,
        isSubmitWorkSuccessful: false,
        isRegisterSuccessful: false,
        submitWorkFailMessage: '',
        registerFailMessage: '',
      ),
    );
    final registerJahadiGroupResult = await registerJahadiGroupUseCase(
      param: Tuple1<RegisterParams>(event.registerParams),
    );
    registerJahadiGroupResult.fold(
      (l) => emit(
        state.copyWith(
          isLoading: false,
          registerFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoading: false,
          isRegisterSuccessful: true,
          registerFormState: RegisterType.jahadiGroup,
          jahadiGroupData: r,
        ),
      ),
    );
  }

  FutureOr<void> _onRegisterIndividual(
    _RegisterIndividual event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitWork: false,
        isLoading: true,
        isSubmitWorkSuccessful: false,
        isRegisterSuccessful: false,
        submitWorkFailMessage: '',
        registerFailMessage: '',
      ),
    );
    final registerIndividualResult = await registerIndividualUseCase(
      param: Tuple1<RegisterParams>(event.registerParams),
    );
    registerIndividualResult.fold(
      (l) => emit(
        state.copyWith(
          isLoading: false,
          registerFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoading: false,
          isRegisterSuccessful: true,
          registerFormState: RegisterType.individual,
          individualData: r,
        ),
      ),
    );
  }

  FutureOr<void> _onGetAtlasCode(
    _GetAtlasCode event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingSubmitWork: false,
        isLoading: false,
        isLoadingGetAtlasCode: true,
        isSubmitWorkSuccessful: false,
        isRegisterSuccessful: false,
        isGetAtlasCodeSuccessful: false,
        submitWorkFailMessage: '',
        registerFailMessage: '',
        getAtlasCodeFailMessage: '',
        getAtlasCodeResult: '',
      ),
    );
    final getAtlasCodeResult = await getAtlasCodeUseCase(
      param: Tuple1<String>(event.groupSupervisorNationalCode),
    );
    getAtlasCodeResult.fold(
      (l) => emit(
        state.copyWith(
          isLoadingGetAtlasCode: false,
          getAtlasCodeFailMessage: l.toMessage(),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoadingGetAtlasCode: false,
          isGetAtlasCodeSuccessful: true,
          getAtlasCodeResult: r,
        ),
      ),
    );
  }
}
