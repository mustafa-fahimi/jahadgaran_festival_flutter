import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart'
    as tuple;
import 'package:jahadgaran_festival/src/features/core/use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';

class GetAtlasCodeUseCase
    implements UseCase<JahadiWorkFailure, String, tuple.Tuple1<String>> {
  const GetAtlasCodeUseCase(this.repo);

  final JahadiWorkRepository repo;

  @override
  Future<Either<JahadiWorkFailure, String>> call({
    tuple.Tuple1<String>? param,
  }) =>
      (param == null)
          ? Future.value(left(const JahadiWorkFailure.nullParam()))
          : repo.getAtlasCode(groupSupervisorNationalCode: param.value1);
}
