import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jahadgaran_festival/src/features/core/failures/api_failure.dart';
import 'package:jahadgaran_festival/src/features/core/failures/failure.dart';

part 'jahadi_work_failure.freezed.dart';

@freezed
class JahadiWorkFailure extends Failure with _$JahadiWorkFailure {
  const factory JahadiWorkFailure.api(ApiFailure failure) = _Api;
  const factory JahadiWorkFailure.nullParam() = _NullParam;
}
