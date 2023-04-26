// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jahadgaran_festival/src/core/core.dart' as _i15;
import 'package:jahadgaran_festival/src/core/environment/env.dart' as _i3;
import 'package:jahadgaran_festival/src/core/environment/env_dev.dart' as _i4;
import 'package:jahadgaran_festival/src/core/environment/env_prod.dart' as _i5;
import 'package:jahadgaran_festival/src/core/interceptors/request_interceptor.dart'
    as _i14;
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_remote_data_source.dart'
    as _i10;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart'
    as _i11;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/get_atlas_code_use_case.dart'
    as _i6;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/group_submitted_work_use_case.dart'
    as _i7;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/individual_submitted_work_use_case.dart'
    as _i8;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/jahadi_group_submitted_work_use_case.dart'
    as _i9;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/register_individual_group_use_case.dart'
    as _i12;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/register_jahadi_group_use_case.dart'
    as _i13;
import 'package:jahadgaran_festival/src/injection/module_injection/feature_injection/jahadi_work_feature_module.dart'
    as _i17;
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart'
    as _i16;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final jahadiWorkFeatureModule = _$JahadiWorkFeatureModule();
    gh.singleton<_i3.Env>(
      _i4.EnvDev(),
      registerFor: {_dev},
    );
    gh.singleton<_i3.Env>(
      _i5.EnvProd(),
      registerFor: {_prod},
    );
    gh.factory<_i6.GetAtlasCodeUseCase>(
        () => jahadiWorkFeatureModule.getAtlasCodeUseCase);
    gh.factory<_i7.GroupSubmittedWorkUseCase>(
        () => jahadiWorkFeatureModule.groupSubmittedWorkUseCase);
    gh.factory<_i8.IndividualSubmittedWorkUseCase>(
        () => jahadiWorkFeatureModule.individualSubmittedWorkUseCase);
    gh.factory<_i9.JahadiGroupSubmittedWorkUseCase>(
        () => jahadiWorkFeatureModule.jahadiGroupSubmittedWorkUseCase);
    gh.factory<_i10.JahadiWorkRemoteDataSource>(
        () => jahadiWorkFeatureModule.remoteDS);
    gh.factory<_i11.JahadiWorkRepository>(() => jahadiWorkFeatureModule.repo);
    gh.factory<_i12.RegisterIndividualUseCase>(
        () => jahadiWorkFeatureModule.registerIndividualUseCase);
    gh.factory<_i13.RegisterJahadiGroupUseCase>(
        () => jahadiWorkFeatureModule.registerJahadiGroupUseCase);
    gh.factory<_i14.RequestInterceptor>(
        () => _i14.RequestInterceptor(gh<_i15.Env>()));
    gh.factory<_i16.HomeBloc>(() => _i16.HomeBloc(
          gh<_i9.JahadiGroupSubmittedWorkUseCase>(),
          gh<_i13.RegisterJahadiGroupUseCase>(),
          gh<_i12.RegisterIndividualUseCase>(),
          gh<_i6.GetAtlasCodeUseCase>(),
          gh<_i8.IndividualSubmittedWorkUseCase>(),
          gh<_i7.GroupSubmittedWorkUseCase>(),
        ));
    return this;
  }
}

class _$JahadiWorkFeatureModule extends _i17.JahadiWorkFeatureModule {}
