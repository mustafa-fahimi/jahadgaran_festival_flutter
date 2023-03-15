import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart'
    as tuple;
import 'package:jahadgaran_festival/src/features/core/use_case.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/repositories/jahadi_work_repository.dart';

class SendDataUseCase
    implements UseCase<JahadiWorkFailure, void, tuple.Tuple1<FormData>> {
  const SendDataUseCase(this.repo);

  final JahadiWorkRepository repo;

  @override
  Future<Either<JahadiWorkFailure, void>> call({
    tuple.Tuple1<FormData>? param,
  }) =>
      (param == null)
          ? Future.value(left(const JahadiWorkFailure.nullParam()))
          : repo.sendData(formData: param.value1);
}
