import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/core/extensions/dio_ex.dart';
import 'package:jahadgaran_festival/src/features/core/failures/api_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_end_points.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/register_params.dart';

abstract class JahadiWorkRemoteDataSource {
  Future<Either<ApiFailure, Map<String, dynamic>>> registerJahadiGroup({
    required RegisterParams registerParams,
  });

  Future<Either<ApiFailure, Map<String, dynamic>>> registerIndividual({
    required RegisterParams registerParams,
  });

  Future<Either<ApiFailure, Map<String, dynamic>>> registerGroup({
    required RegisterParams registerParams,
  });

  Future<Either<ApiFailure, void>> sendSubmittedWork({
    required FormData formData,
  });

  Future<Either<ApiFailure, Map<String, dynamic>>> getAtlasCode({
    required String groupSupervisorNationalCode,
  });
}

class JahadiWorkRemoteDataSourceImpl extends JahadiWorkRemoteDataSource {
  JahadiWorkRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> registerJahadiGroup({
    required RegisterParams registerParams,
  }) =>
      apiService.getMethod<Map<String, dynamic>>(
        '''${const JahadiWorkEndpoints.registerJahadiGroup().toPath}?national_code=${registerParams.nationalCode}&phone_number=${registerParams.phoneNumber}''',
      ).toNonNullDomain;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> registerIndividual({
    required RegisterParams registerParams,
  }) =>
      apiService.getMethod<Map<String, dynamic>>(
        '''${const JahadiWorkEndpoints.registerIndividual().toPath}?national_code=${registerParams.nationalCode}&phone_number=${registerParams.phoneNumber}''',
      ).toNonNullDomain;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> registerGroup({
    required RegisterParams registerParams,
  }) =>
      apiService.getMethod<Map<String, dynamic>>(
        '''${const JahadiWorkEndpoints.registerGroup().toPath}?national_code=${registerParams.nationalCode}&phone_number=${registerParams.phoneNumber}''',
      ).toNonNullDomain;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> sendSubmittedWork({
    required FormData formData,
  }) =>
      apiService
          .postMethod<Map<String, dynamic>>(
            const JahadiWorkEndpoints.submittedWork().toPath,
            body: formData,
            option: const ApiServiceOption(
              header: ApiServiceHeader.formData(),
            ),
          )
          .toNonNullDomain;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> getAtlasCode({
    required String groupSupervisorNationalCode,
  }) =>
      apiService.getMethod<Map<String, dynamic>>(
        '''${const JahadiWorkEndpoints.getAtlasCode().toPath}?group_supervisor_national_code=$groupSupervisorNationalCode''',
      ).toNonNullDomain;
}
