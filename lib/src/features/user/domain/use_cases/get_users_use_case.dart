import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart'
    as tuple;
import 'package:jahadgaran_festival/src/features/core/use_case.dart';
import 'package:jahadgaran_festival/src/features/user/domain/failures/user_failure.dart';
import 'package:jahadgaran_festival/src/features/user/domain/models/users_response.dart';
import 'package:jahadgaran_festival/src/features/user/domain/repositories/user_repository.dart';

class GetUsersUseCase
    implements UseCase<UserFailure, UsersResponse, tuple.Tuple1<int?>> {
  const GetUsersUseCase(this.repo);

  final UserRepository repo;

  @override
  Future<Either<UserFailure, UsersResponse>> call({
    tuple.Tuple1<int?>? param,
  }) =>
      (param == null)
          ? Future.value(left(const UserFailure.nullParam()))
          : repo.getUsers(page: param.value1);
}
