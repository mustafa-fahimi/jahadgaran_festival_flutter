// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/failures/failure.dart';
import 'package:jahadgaran_festival/src/features/core/failures/failures_enum.dart';
import 'package:jahadgaran_festival/src/features/user/domain/failures/user_failure.dart';

extension ParseFailureEx on Failure {
  String toMessage() {
    late dynamic failure;
    if (this is UserFailure) {
      failure = this as UserFailure;
    }
    return failure.maybeWhen(
      api: (dynamic f) {
        return f.maybeWhen(
          badRequest: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          notFound: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          validation: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          unAuthorised: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          duplicate: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          crossOrigin: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          timeout: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          serverError: (dynamic failure) =>
              _getFailureKey(failure).toFailureMessage(),
          orElse: () => 'Unknown failure',
        );
      },
      orElse: () => 'Unknown failure',
    ) as String;
  }

  FailuresEnum _getFailureKey(dynamic failure) {
    var error = '';
    AppHelper().logMessage('ApiCallFailure: $failure');
    if (failure is Map) {
      if (failure.keys.contains('error')) {
        error = failure['error'] as String;
      } else if (failure.keys.contains('message')) {
        error = (failure['message'] as List<dynamic>)[0] as String;
      }
    } else if (failure is String) {
      final jsonResult = json.decode(failure) as Map<String, dynamic>;
      error = (jsonResult['message'] as List<dynamic>)[0] as String;
    }
    return error.toFailuresEnum();
  }
}
