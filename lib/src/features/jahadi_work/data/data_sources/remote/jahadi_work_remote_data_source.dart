import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/core/extensions/dio_ex.dart';
import 'package:jahadgaran_festival/src/features/core/failures/api_failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/data/data_sources/remote/jahadi_work_end_points.dart';

abstract class JahadiWorkRemoteDataSource {
  Future<Either<ApiFailure, void>> sendData({
    required FormData formData,
  });
}

class JahadiWorkRemoteDataSourceImpl extends JahadiWorkRemoteDataSource {
  JahadiWorkRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> sendData({
    required FormData formData,
  }) =>
      apiService
          .postMethod<Map<String, dynamic>>(
            const JahadiWorkEndpoints.jahadiData().toPath,
            body: formData,
            option: const ApiServiceOption(
              header: ApiServiceHeader.formData(),
            ),
          )
          .toNonNullDomain;
}
