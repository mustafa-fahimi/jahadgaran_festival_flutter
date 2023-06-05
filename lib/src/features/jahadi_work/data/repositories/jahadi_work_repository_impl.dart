import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/core/models/base_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_remote_data_source.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/individual_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/jahadi_group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/register_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/submitted_works_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';

class JahadiWorkRepositoryImpl implements JahadiWorkRepository {
  JahadiWorkRepositoryImpl(this._remoteDS);
  final JahadiWorkRemoteDataSource _remoteDS;

  @override
  Future<Either<JahadiWorkFailure, JahadiGroupResponse>> registerJahadiGroup({
    required RegisterParams registerParams,
  }) =>
      _remoteDS.registerJahadiGroup(registerParams: registerParams).then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, JahadiGroupResponse>(
              JahadiWorkFailure.api(l),
            ),
            (r) async => right<JahadiWorkFailure, JahadiGroupResponse>(
              JahadiGroupResponse.fromJson(
                BaseResponse.fromJson(r).data as Map<String, dynamic>,
              ),
            ),
          );
        },
      );

  @override
  Future<Either<JahadiWorkFailure, IndividualResponse?>> registerIndividual({
    required RegisterParams registerParams,
  }) =>
      _remoteDS.registerIndividual(registerParams: registerParams).then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, IndividualResponse?>(
              JahadiWorkFailure.api(l),
            ),
            (r) async {
              final data = BaseResponse.fromJson(r).data;
              if (data != null) {
                return right<JahadiWorkFailure, IndividualResponse?>(
                  IndividualResponse.fromJson(
                    BaseResponse.fromJson(r).data as Map<String, dynamic>,
                  ),
                );
              } else {
                return right<JahadiWorkFailure, IndividualResponse?>(null);
              }
            },
          );
        },
      );

  @override
  Future<Either<JahadiWorkFailure, GroupResponse?>> registerGroup({
    required RegisterParams registerParams,
  }) =>
      _remoteDS.registerGroup(registerParams: registerParams).then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, GroupResponse?>(
              JahadiWorkFailure.api(l),
            ),
            (r) async {
              final data = BaseResponse.fromJson(r).data;
              if (data != null) {
                return right<JahadiWorkFailure, GroupResponse?>(
                  GroupResponse.fromJson(
                    BaseResponse.fromJson(r).data as Map<String, dynamic>,
                  ),
                );
              } else {
                return right<JahadiWorkFailure, GroupResponse?>(null);
              }
            },
          );
        },
      );

  @override
  Future<Either<JahadiWorkFailure, void>> jahadiGroupSubmittedWork({
    required FormData formData,
  }) =>
      _remoteDS.jahadiGroupSubmittedWork(formData: formData).then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, void>(
              JahadiWorkFailure.api(l),
            ),
            (r) async => right<JahadiWorkFailure, void>(null),
          );
        },
      );

  @override
  Future<Either<JahadiWorkFailure, String>> getAtlasCode({
    required String groupSupervisorNationalCode,
  }) =>
      _remoteDS
          .getAtlasCode(
        groupSupervisorNationalCode: groupSupervisorNationalCode,
      )
          .then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, String>(
              JahadiWorkFailure.api(l),
            ),
            (r) async => right<JahadiWorkFailure, String>(
              BaseResponse.fromJson(r).message!,
            ),
          );
        },
      );

  @override
  Future<Either<JahadiWorkFailure, void>> groupSubmittedWork({
    required FormData formData,
  }) =>
      _remoteDS.groupSubmittedWork(formData: formData).then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, void>(
              JahadiWorkFailure.api(l),
            ),
            (r) async => right<JahadiWorkFailure, void>(null),
          );
        },
      );

  @override
  Future<Either<JahadiWorkFailure, void>> individualSubmittedWork({
    required FormData formData,
  }) =>
      _remoteDS.individualSubmittedWork(formData: formData).then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, void>(
              JahadiWorkFailure.api(l),
            ),
            (r) async => right<JahadiWorkFailure, void>(null),
          );
        },
      );

  @override
  Future<Either<JahadiWorkFailure, SubmittedWorksResponse>>
      getSubmittedWorks() => _remoteDS.getSubmittedWorks().then(
            (response) async {
              return response.fold(
                (l) async => left<JahadiWorkFailure, SubmittedWorksResponse>(
                  JahadiWorkFailure.api(l),
                ),
                (r) async => right<JahadiWorkFailure, SubmittedWorksResponse>(
                  SubmittedWorksResponse.fromJson(
                    {
                      'submittedWorks':
                          BaseResponse.fromJson(r).data as List<dynamic>,
                    },
                  ),
                ),
              );
            },
          );
}
