import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jahadgaran_festival/src/features/core/failures/failure.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure extends Failure with _$ApiFailure {
  //! RESPONSE ERRORS
  const factory ApiFailure.badRequest(res) = _BadRequest;
  const factory ApiFailure.unAuthorised(res) = _UnAuthorised;
  const factory ApiFailure.notFound(res) = _NotFound;
  const factory ApiFailure.validation(res) = _Validation;
  const factory ApiFailure.serverError(res) = _ServerError;
  const factory ApiFailure.fetchData(res) = _FetchData;
  const factory ApiFailure.duplicate(res) = _Duplicate;

  //! OTHER ERRORS
  const factory ApiFailure.socket() = _Socket;
  const factory ApiFailure.cancel() = _Cancel;
  const factory ApiFailure.timeout(res) = _Timeout;
  const factory ApiFailure.rangeError() = _RangeError;
  const factory ApiFailure.format() = _Format;
  const factory ApiFailure.crossOrigin(res) = _CrossOrigin;
  const factory ApiFailure.unKnown() = _UnKnown;
}
