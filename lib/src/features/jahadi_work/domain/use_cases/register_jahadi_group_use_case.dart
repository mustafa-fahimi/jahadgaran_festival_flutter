import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart'
    as tuple;
import 'package:jahadgaran_festival/src/features/core/use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/jahadi_group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/register_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';

class RegisterJahadiGroupUseCase
    implements
        UseCase<JahadiWorkFailure, JahadiGroupResponse,
            tuple.Tuple1<RegisterParams>> {
  const RegisterJahadiGroupUseCase(this.repo);

  final JahadiWorkRepository repo;

  @override
  Future<Either<JahadiWorkFailure, JahadiGroupResponse>> call({
    tuple.Tuple1<RegisterParams>? param,
  }) =>
      (param == null)
          ? Future.value(left(const JahadiWorkFailure.nullParam()))
          : repo.registerJahadiGroup(registerParams: param.value1);
}
