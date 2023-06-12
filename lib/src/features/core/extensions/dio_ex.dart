import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/features/core/failures/api_failure.dart';

extension FlApiFutureToDomain<T> on Future<Either<DioException, Response<T>>> {
  Future<Either<ApiFailure, T?>> get toDomain => then(
        (res) => res.fold(
          (dioError) => left<ApiFailure, T>(dioError.toDomain),
          (response) => right<ApiFailure, T?>(response.data),
        ),
      );

  Future<Either<ApiFailure, T>> get toNonNullDomain => then(
        (res) => res.fold(
          (dioError) => left<ApiFailure, T>(dioError.toDomain),
          (response) => right<ApiFailure, T>(response.data as T),
        ),
      );
}

extension DioErrorEx on DioException {
  ApiFailure get toDomain {
    if (type == DioExceptionType.badResponse) {
      switch (response?.statusCode) {
        case null:
          return const ApiFailure.crossOrigin('{"message": ["cross_origin"]}');
        case 400:
          return ApiFailure.badRequest(response!.data);
        case 401:
        case 403:
          return ApiFailure.unAuthorised(response!.data);
        case 404:
          return ApiFailure.notFound(response!.data);
        case 409:
          return ApiFailure.duplicate(response!.data);
        case 422:
          return ApiFailure.validation(response!.data);
        case 500:
          return ApiFailure.serverError(response!.data);
        default:
          return ApiFailure.fetchData(response!.data);
      }
    } else if (type == DioExceptionType.unknown) {
      if (error is SocketException) {
        return const ApiFailure.socket();
      } else if (error is TimeoutException) {
        return const ApiFailure.timeout('{"message": ["timeout"]}');
      } else if (error is FormatException) {
        return const ApiFailure.format();
      } else if (error is RangeError) {
        return const ApiFailure.rangeError();
      } else {
        return const ApiFailure.unKnown();
      }
    } else if (type == DioExceptionType.cancel) {
      return const ApiFailure.cancel();
    } else if (type == DioExceptionType.receiveTimeout ||
        type == DioExceptionType.connectionTimeout ||
        type == DioExceptionType.sendTimeout) {
      return const ApiFailure.timeout('{"message": ["timeout"]}');
    } else {
      return const ApiFailure.unKnown();
    }
  }
}
