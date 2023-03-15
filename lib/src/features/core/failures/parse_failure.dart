// ignore_for_file: avoid_dynamic_calls

import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/failures/api_failure.dart';
import 'package:jahadgaran_festival/src/features/core/failures/failure.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/failures/jahadi_work_failure.dart';

extension ParseFailureEx on Failure {
  String toMessage() {
    late dynamic failure;
    if (this is JahadiWorkFailure) {
      failure = this as JahadiWorkFailure;
    }
    return failure.maybeWhen(
      api: (ApiFailure apiFailure) => apiFailure.maybeWhen(
        badRequest: _getFailureMessage,
        notFound: _getFailureMessage,
        validation: _getFailureMessage,
        unAuthorised: _getFailureMessage,
        duplicate: _getFailureMessage,
        crossOrigin: _getFailureMessage,
        timeout: _getFailureMessage,
        serverError: _getFailureMessage,
        orElse: () => 'Unknown api failure',
      ),
      orElse: () => 'Unknown failure',
    ) as String;
  }

  String _getFailureMessage(dynamic failure) {
    AppHelper().logMessage('ApiCallFailure: $failure');
    return failure['message'] as String;
  }
}
