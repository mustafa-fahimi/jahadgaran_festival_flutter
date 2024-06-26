import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/individual_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/jahadi_group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/register_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/submitted_works_response.dart';

abstract class JahadiWorkRepository {
  Future<Either<JahadiWorkFailure, JahadiGroupResponse>> registerJahadiGroup({
    required RegisterParams registerParams,
  });

  Future<Either<JahadiWorkFailure, IndividualResponse?>> registerIndividual({
    required RegisterParams registerParams,
  });

  Future<Either<JahadiWorkFailure, GroupResponse?>> registerGroup({
    required RegisterParams registerParams,
  });

  Future<Either<JahadiWorkFailure, void>> jahadiGroupSubmittedWork({
    required FormData formData,
  });

  Future<Either<JahadiWorkFailure, void>> individualSubmittedWork({
    required FormData formData,
  });

  Future<Either<JahadiWorkFailure, void>> groupSubmittedWork({
    required FormData formData,
  });

  Future<Either<JahadiWorkFailure, String>> getAtlasCode({
    required String groupSupervisorNationalCode,
  });

  Future<Either<JahadiWorkFailure, SubmittedWorksResponse>> getSubmittedWorks();
}
