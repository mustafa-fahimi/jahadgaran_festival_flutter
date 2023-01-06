import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/core/extensions/dio_ex.dart';
import 'package:jahadgaran_festival/src/features/core/failures/api_failure.dart';
import 'package:jahadgaran_festival/src/features/user/data/data_sources/remote/user_end_points.dart';

abstract class UserRemoteDataSource {
  Future<Either<ApiFailure, Map<String, dynamic>>> getUsers({
    int? page = 1,
  });
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  UserRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> getUsers({
    int? page = 1,
  }) =>
      apiService
          .getMethod<Map<String, dynamic>>(
            '${const UserEndpoints.userList().toPath}?page=$page',
          )
          .toNonNullDomain;
}
