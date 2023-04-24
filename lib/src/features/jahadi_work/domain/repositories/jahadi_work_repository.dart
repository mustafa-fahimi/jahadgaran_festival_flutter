import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/individual_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/jahadi_group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/register_params.dart';

abstract class JahadiWorkRepository {
  Future<Either<JahadiWorkFailure, JahadiGroupResponse>> registerJahadiGroup({
    required RegisterParams registerParams,
  });

  Future<Either<JahadiWorkFailure, IndividualResponse?>> registerIndividual({
    required RegisterParams registerParams,
  });

  Future<Either<JahadiWorkFailure, void>> registerGroup({
    required RegisterParams registerParams,
  });

  Future<Either<JahadiWorkFailure, void>> sendSubmittedWork({
    required FormData formData,
  });

  Future<Either<JahadiWorkFailure, String>> getAtlasCode({
    required String groupSupervisorNationalCode,
  });
}
