import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart'
    as tuple;
import 'package:jahadgaran_festival/src/features/core/use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/submitted_work.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';

class GetSubmittedWorkUseCase
    implements UseCase<JahadiWorkFailure, List<SubmittedWork>, tuple.Tuple0> {
  const GetSubmittedWorkUseCase(this.repo);

  final JahadiWorkRepository repo;

  @override
  Future<Either<JahadiWorkFailure, List<SubmittedWork>>> call({
    tuple.Tuple0? param,
  }) =>
      repo.getSubmittedWorks();
}
