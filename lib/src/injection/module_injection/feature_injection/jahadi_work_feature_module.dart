import 'package:api_service/api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_remote_data_source.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/repositories/jahadi_work_repository_impl.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/get_atlas_code_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/group_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/individual_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/jahadi_group_submitted_work_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/register_individual_group_use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/use_cases/register_jahadi_group_use_case.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';

@module
abstract class JahadiWorkFeatureModule {
  /// Data-Sources
  JahadiWorkRemoteDataSource get remoteDS =>
      JahadiWorkRemoteDataSourceImpl(getIt.get<ApiService>());

  /// Repositories
  JahadiWorkRepository get repo => JahadiWorkRepositoryImpl(remoteDS);

  /// Use cases
  RegisterJahadiGroupUseCase get registerJahadiGroupUseCase =>
      RegisterJahadiGroupUseCase(repo);
  RegisterIndividualUseCase get registerIndividualUseCase =>
      RegisterIndividualUseCase(repo);
  JahadiGroupSubmittedWorkUseCase get jahadiGroupSubmittedWorkUseCase =>
      JahadiGroupSubmittedWorkUseCase(repo);
  IndividualSubmittedWorkUseCase get individualSubmittedWorkUseCase =>
      IndividualSubmittedWorkUseCase(repo);
  GroupSubmittedWorkUseCase get groupSubmittedWorkUseCase =>
      GroupSubmittedWorkUseCase(repo);
  GetAtlasCodeUseCase get getAtlasCodeUseCase => GetAtlasCodeUseCase(repo);
}
