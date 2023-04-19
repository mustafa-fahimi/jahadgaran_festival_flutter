import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/core/models/base_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_remote_data_source.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';

class JahadiWorkRepositoryImpl implements JahadiWorkRepository {
  JahadiWorkRepositoryImpl(this._remoteDS);
  final JahadiWorkRemoteDataSource _remoteDS;

  @override
  Future<Either<JahadiWorkFailure, void>> sendData({
    required FormData formData,
  }) =>
      _remoteDS.sendData(formData: formData).then(
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
  Future<Either<JahadiWorkFailure, GetGroupDataResponse>> getGroupData({
    required GetGroupDataParams getGroupDataParams,
  }) =>
      _remoteDS.getGroupData(getGroupDataParams: getGroupDataParams).then(
        (response) async {
          return response.fold(
            (l) async => left<JahadiWorkFailure, GetGroupDataResponse>(
              JahadiWorkFailure.api(l),
            ),
            (r) async => right<JahadiWorkFailure, GetGroupDataResponse>(
              GetGroupDataResponse.fromJson(
                BaseResponse.fromJson(r).data as Map<String, dynamic>,
              ),
            ),
          );
        },
      );
}
