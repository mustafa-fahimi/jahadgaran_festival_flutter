import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_response.dart';

abstract class JahadiWorkRepository {
  Future<Either<JahadiWorkFailure, GetGroupDataResponse>> getGroupData({
    required GetGroupDataParams getGroupDataParams,
  });

  Future<Either<JahadiWorkFailure, void>> sendSubmittedWork({
    required FormData formData,
  });
}
