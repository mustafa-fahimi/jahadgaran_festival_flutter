import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/user/domain/failures/user_failure.dart';
import 'package:jahadgaran_festival/src/features/user/domain/models/users_response.dart';

abstract class UserRepository {
  Future<Either<UserFailure, UsersResponse>> getUsers({
    int? page,
  });
}
