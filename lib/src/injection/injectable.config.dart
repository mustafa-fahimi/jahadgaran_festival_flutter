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
import 'package:jahadgaran_festival/src/core/core.dart' as _i9;
import 'package:jahadgaran_festival/src/core/environment/env.dart' as _i3;
import 'package:jahadgaran_festival/src/core/environment/env_dev.dart' as _i4;
import 'package:jahadgaran_festival/src/core/environment/env_prod.dart' as _i5;
import 'package:jahadgaran_festival/src/core/interceptors/request_interceptor.dart'
    as _i8;
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_remote_data_source.dart'
    as _i6;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart'
    as _i7;
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/send_data_use_case.dart'
    as _i10;
import 'package:jahadgaran_festival/src/injection/module_injection/feature_injection/jahadi_work_feature_module.dart'
    as _i12;
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart'
    as _i11;

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
    gh.factory<_i6.JahadiWorkRemoteDataSource>(
        () => jahadiWorkFeatureModule.remoteDS);
    gh.factory<_i7.JahadiWorkRepository>(() => jahadiWorkFeatureModule.repo);
    gh.factory<_i8.RequestInterceptor>(
        () => _i8.RequestInterceptor(gh<_i9.Env>()));
    gh.factory<_i10.SendDataUseCase>(
        () => jahadiWorkFeatureModule.sendDataUseCase);
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i10.SendDataUseCase>()));
    return this;
  }
}

class _$JahadiWorkFeatureModule extends _i12.JahadiWorkFeatureModule {}
