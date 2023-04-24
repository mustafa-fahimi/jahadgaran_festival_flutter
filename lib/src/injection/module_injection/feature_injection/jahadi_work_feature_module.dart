import 'package:api_service/api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_remote_data_source.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/repositories/jahadi_work_repository_impl.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/get_atlas_code_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/get_group_data_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/send_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';

@module
abstract class JahadiWorkFeatureModule {
  /// Data-Sources
  JahadiWorkRemoteDataSource get remoteDS =>
      JahadiWorkRemoteDataSourceImpl(getIt.get<ApiService>());

  /// Repositories
  JahadiWorkRepository get repo => JahadiWorkRepositoryImpl(remoteDS);

  /// Use cases
  GetGroupDataUseCase get getGroupDataUseCase => GetGroupDataUseCase(repo);
  SendSubmittedWorkUseCase get sendSubmittedWorkUseCase =>
      SendSubmittedWorkUseCase(repo);
  GetAtlasCodeUseCase get getAtlasCodeUseCase => GetAtlasCodeUseCase(repo);
}
