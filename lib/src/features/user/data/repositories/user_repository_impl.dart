import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/user/data/data_sources/remote/user_remote_data_source.dart';
import 'package:jahadgaran_festival/src/features/user/domain/failures/user_failure.dart';
import 'package:jahadgaran_festival/src/features/user/domain/models/users_response.dart';
import 'package:jahadgaran_festival/src/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._remoteDS);
  final UserRemoteDataSource _remoteDS;

  @override
  Future<Either<UserFailure, UsersResponse>> getUsers({
    int? page,
  }) =>
      _remoteDS.getUsers(page: page).then(
        (response) async {
          return response.fold(
            (l) async => left<UserFailure, UsersResponse>(
              UserFailure.api(l),
            ),
            (r) async => right<UserFailure, UsersResponse>(
              UsersResponse.fromJson(r),
            ),
          );
        },
      );
}
