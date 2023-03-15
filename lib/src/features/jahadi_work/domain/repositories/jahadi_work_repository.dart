import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';

abstract class JahadiWorkRepository {
  Future<Either<JahadiWorkFailure, void>> sendData({
    required FormData formData,
  });
}
