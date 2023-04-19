import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart'
    as tuple;
import 'package:jahadgaran_festival/src/features/core/use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_params.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';

class GetGroupDataUseCase
    implements
        UseCase<JahadiWorkFailure, GetGroupDataResponse,
            tuple.Tuple1<GetGroupDataParams>> {
  const GetGroupDataUseCase(this.repo);

  final JahadiWorkRepository repo;

  @override
  Future<Either<JahadiWorkFailure, GetGroupDataResponse>> call({
    tuple.Tuple1<GetGroupDataParams>? param,
  }) =>
      (param == null)
          ? Future.value(left(const JahadiWorkFailure.nullParam()))
          : repo.getGroupData(getGroupDataParams: param.value1);
}
